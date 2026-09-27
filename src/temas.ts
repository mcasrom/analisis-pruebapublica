export type Eje = {
  slug: string;
  nombre: string;
  resumen: string;
  serie?: string;
  tags: string[];
};

export const EJES: Eje[] = [
  {
    slug: 'geopolitica-101',
    nombre: 'Geopolítica 101',
    resumen:
      'Itinerario de iniciación al análisis geopolítico: qué es la geografía del poder, energía, cables, Ártico, tecnología, espacio, educación, comercio y corredores. Once artículos en orden de lectura.',
    serie: 'Geopolítica 101',
    tags: [],
  },
  {
    slug: 'fronteras-y-migraciones',
    nombre: 'Fronteras y migraciones',
    resumen:
      'La frontera sur como instrumento de poder: presión migratoria, respuesta diplomática y relato informativo. Incluye la serie Ceuta 2026 completa.',
    tags: [
      'Ceuta',
      'Melilla',
      'Frontera Sur',
      'crisis migratoria',
      'migraciones',
      'fronteras',
      'geopolítica de las fronteras',
      'Sáhara Occidental',
      'desigualdad',
    ],
  },
  {
    slug: 'energia',
    nombre: 'Energía y materias primas',
    resumen:
      'Petróleo, gas y las rutas que los mueven: OPEP+, Venezuela, Ormuz, los oleoductos y gasoductos Eurasianos y el corredor medio.',
    tags: [
      'energía',
      'geopolítica de la energía',
      'petróleo',
      'OPEP',
      'oleoductos',
      'gasoductos',
      'corredor medio',
      'transcaspio',
    ],
  },
  {
    slug: 'comercio-y-aranceles',
    nombre: 'Comercio y aranceles',
    resumen:
      'El comercio internacional como campo de batalla: de Adam Smith a la Sección 338, proteccionismo, coerción económica y dependencia mutua.',
    tags: [
      'aranceles',
      'comercio',
      'proteccionismo',
      'economía política',
      'política económica',
      'historia económica',
      'comercio marítimo',
    ],
  },
  {
    slug: 'infraestructura-critica',
    nombre: 'Infraestructura crítica',
    resumen:
      'Lo que no se ve pero decide: cables submarinos, saturación de la órbita, satélites e interdependencia de las redes.',
    tags: [
      'cables submarinos',
      'infraestructura crítica',
      'infraestructura',
      'interdependencia',
      'espacio',
      'satélites',
      'PLD Space',
    ],
  },
];
