#!/usr/bin/env python3
"""OG 1200x630 para 'La fidelidad del voto'."""
from __future__ import annotations
import argparse, os
from PIL import Image, ImageDraw, ImageFont

BG=(15,16,38); PANEL=(24,26,54); FG=(238,240,246); MUTED=(184,188,208); ACCENT=(255,90,31); OK=(61,220,151); LINE=(48,52,88)
def font(size,bold=False,serif=False):
    c=[]
    if serif: c+=["/usr/share/fonts/truetype/liberation/LiberationSerif-Bold.ttf"]
    if bold: c+=["/usr/share/fonts/truetype/liberation/LiberationSans-Bold.ttf"]
    else: c+=["/usr/share/fonts/truetype/liberation/LiberationSans-Regular.ttf"]
    for x in c:
        if os.path.exists(x): return ImageFont.truetype(x,size)
    return ImageFont.load_default()
def main():
    ap=argparse.ArgumentParser(); ap.add_argument("--out",default="public/fidelidad-voto-og.png"); a=ap.parse_args()
    img=Image.new("RGB",(1200,630),BG); d=ImageDraw.Draw(img)
    d.rectangle([0,0,12,630],fill=ACCENT); d.rectangle([0,0,1200,8],fill=ACCENT)
    d.text((52,36),"Análisis",font=font(28,True),fill=FG)
    d.text((52,75),"España 29-N · comportamiento electoral",font=font(22),fill=MUTED)
    d.text((52,132),"La fidelidad del voto",font=font(62,True,serif=True),fill=FG)
    d.text((52,207),"Por qué seguimos votando a los mismos",font=font(31,True),fill=MUTED)
    d.rectangle([54,254,190,259],fill=ACCENT)
    d.text((52,286),"Identidad · ideología · voto negativo · rupturas",font=font(24),fill=FG)
    y=356
    for s in ["No es una evaluación permanente de resultados.","Cambiar de partido no es cambiar de ideología.","Las transferencias son intención declarada, no pronóstico."]:
        d.rounded_rectangle([52,y,1148,y+54],radius=9,fill=PANEL,outline=LINE)
        d.text((74,y+15),s,font=font(22),fill=MUTED)
        y+=66
    d.text((52,574),"Un análisis para leer el 29N sin confundir intención con resultado.",font=font(19),fill=MUTED)
    d.text((870,574),"analisis.pruebapublica.com",font=font(18),fill=OK)
    os.makedirs(os.path.dirname(a.out) or ".",exist_ok=True); img.save(a.out,optimize=True)
    print("og ok",a.out,img.size)
if __name__=="__main__": main()
