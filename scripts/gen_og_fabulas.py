#!/usr/bin/env python3
"""OG 1200x630 para la serie Fábulas del análisis."""
from __future__ import annotations
import argparse
import os
from PIL import Image, ImageDraw, ImageFont

BG=(15,16,38); PANEL=(24,26,54); FG=(238,240,246); MUTED=(181,186,207); ACCENT=(255,90,31); OK=(61,220,151); LINE=(48,52,88)
ITEMS=[
    "El caballo que aprendió a cantar",
    "La llave y la farola",
    "Los ciegos y el elefante",
    "El zorro y el bosque",
    "El rey que no sabía mandar",
    "El viento y el sol",
    "El consejo del bosque",
    "El barquero que nadie quería ser",
    "El bosque, las máscaras y las hogueras",
]
def font(size,bold=False,serif=False):
    c=[]
    if serif: c+=["/usr/share/fonts/truetype/liberation/LiberationSerif-Bold.ttf"]
    if bold: c+=["/usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf"]
    else: c+=["/usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf"]
    for x in c:
        if os.path.exists(x): return ImageFont.truetype(x,size)
    return ImageFont.load_default()
def main():
    ap=argparse.ArgumentParser(); ap.add_argument("--out",default="public/og-fabulas.png"); a=ap.parse_args()
    img=Image.new("RGB",(1200,630),BG); d=ImageDraw.Draw(img)
    d.rectangle([0,0,12,630],fill=ACCENT); d.rectangle([0,0,1200,8],fill=ACCENT)
    d.text((52,34),"Análisis",font=font(28,True),fill=FG)
    d.text((52,72),"Serie · Fábulas del análisis",font=font(22),fill=MUTED)
    d.text((52,118),"Fábulas para pensar el poder",font=font(52,True,serif=True),fill=FG)
    d.text((52,182),"Nueve piezas breves sobre métodos, incentivos y puntos ciegos.",font=font(22),fill=MUTED)
    d.rectangle([54,224,190,229],fill=ACCENT)
    x0=[52,610]; y0=258; rowh=42
    for i,name in enumerate(ITEMS):
        col=i//5; row=i%5; x=x0[col]; y=y0+row*rowh
        d.text((x,y),f"{i+1:02d}",font=font(18,True),fill=ACCENT)
        d.text((x+42,y-2),name,font=font(18,True),fill=FG)
    d.text((52,566),"Serie completa, con enlaces a cada pieza:",font=font(20),fill=MUTED)
    d.text((52,596),"analisis.pruebapublica.com/temas/fabulas",font=font(20,True),fill=OK)
    d.text((880,596),"Miguel Castillo",font=font(18),fill=MUTED)
    os.makedirs(os.path.dirname(a.out) or ".",exist_ok=True); img.save(a.out,optimize=True)
    print("og ok",a.out,img.size)
if __name__=="__main__": main()
