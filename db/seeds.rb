# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Seed for sellers

puts "State seed"

State.create(
  [
    {name: "Puerto Varas"},
    {name: "Puerto Montt"},
    {name: "Frutillar"},
    {name: "Alerce"},
    {name: "Quellón"},
    {name: "Ancud"},
    {name: "LLanquihue"},
    {name: "Osorno"},
    {name: "Titirilquen"}
  ]
)

puts "Sellers seed"

Seller.create(
  [
    {rut:"17858769-5", name:"Juan Carllos",         last_name:"Reinoso",      birth_date: "02-09-2005", department: "departamento Mueblería",         salary: 785000},
    {rut:"22588754-6", name:"Patricio Juan",        last_name:"Bravo",        birth_date: "06-02-2002", department: "departamento Mueblería",         salary: 650000},
    {rut:"12588754-5", name:"Juan Gabriel",         last_name:"Pérez",        birth_date: "25-10-1985", department: "departamento Mueblería",         salary: 960000},
    {rut:"15488754-8", name:"Juan",                 last_name:"Gonzalez",     birth_date: "30-03-1995", department: "departamento Mueblería",         salary: 1200000},
    {rut:"13658787-8", name:"Patricio Del Carmen",  last_name:"Lincoman",     birth_date: "26-05-2001", department: "departamento Cocina"   ,         salary: 956000},
    {rut:"21658787-8", name:"Ernesto",              last_name:"Paredez",      birth_date: "14-11-1986", department: "departamento Cocina"   ,         salary: 430000},
    {rut: "9858763-k", name:"Julia",                last_name:"Blah",         birth_date: "26-12-1995", department: "departamento Cocina"   ,         salary: 750000},
    {rut:"11548776-5", name:"Juana",                last_name:"Blahblah",     birth_date: "12-12-1999", department: "departamento Cocina"   ,         salary: 750000},
    {rut:"12458789-9", name:"Camila",               last_name:"Blahblahbah",  birth_date: "30-08-2000", department: "departamento Electrónica",       salary: 890000},
    {rut:"11456789-5", name:"Jorge",                last_name:"Ruiz",         birth_date: "02-08-2000", department: "departamento Abarrotes",         salary: 600000}, 
    {rut:"16456700-8", name:"Maria Jose",           last_name:"Gutierrrez",   birth_date: "02-08-1986", department: "departamento Abarrotes",         salary: 600000}, 
    {rut:"15456709-5", name:"Marcos",               last_name:"Oyarzo",       birth_date: "09-06-1987", department: "departamento Muebleria",         salary: 600000},
    {rut:"13212344-3", name:"Manuel",               last_name:"Ovalle",       birth_date: "21-06-1985", department: "departamento Deportes",          salary: 600000}, 
    {rut:"15454321-0", name:"Macarena",             last_name:"Opazo",        birth_date: "12-03-1987", department: "departamento Frutas y Verduras", salary: 600000} 
  ]
)

puts "Products Seed"
Product.create(
  [
    {sku: "IBE12345",   name: "mantequilla",          category: "envasado", brand:"florencia",  stock:10,   price: 1350},
    {sku: "IBE12356",   name: "leche",                category: "envasado", brand:"campesina",  stock:5,    price: 2500},
    {sku: "IBE12355",   name: "atun",                 category: "envasado", brand:"san jose",   stock:8,    price: 3560},
    {sku: "IBE12347",   name: "queso",                category: "envasado", brand:"el campo",   stock:9,    price: 2500},
    {sku: "IBE12340",   name: "mermelada",            category: "envasado", brand:"doña dulce", stock:11,   price: 3215},
    {sku: "IBE12367",   name: "azucar",               category: "envasado", brand:"doña flor",  stock:9,    price: 1142},
    {sku: "IBE12351",   name: "aceite",               category: "envasado", brand:"el maizal",  stock:15,   price: 1110},
    {sku: "IBE12348",   name: "harina",               category: "envasado", brand:"florencia",  stock:23,   price: 3990},
    {sku: "IBE12349",   name: "arroz",                category: "envasado", brand:"florencia",  stock:10,   price: 2990},
    {sku: "IBE123400",  name: "mantequilla",          category: "envasado", brand:"florencia",  stock:1,    price: 3500},
    {sku: "IBE123434",  name: "Queso",                category: "embutido", brand:"florencia",  stock:4,    price: 3890}, 
    {sku: "IBE123435",  name: "Jamon pierna",         category: "embutido", brand:"florencia",  stock:10,   price: 3550}, 
    {sku: "IBE123436",  name: "huevos",               category: "envasado", brand:"La Granja",  stock: 12,  price: 4500}, 
    {sku: "IBE123437",  name: "alimentos de cachorro",category: "Animales", brand:"florencia",  stock:4,    price: 35000}, 
    {sku: "IBE123438",  name: "servilleta",           category: "envasado", brand:"florencia",  stock:8,    price: 1500}
]
)

puts "Clients Seed"
Client.create(
  [
    {name: "Adolfo",    last_name: "Barria" ,   address: "psj. las flores" ,    state: State.find_by(name:"Puerto Varas"),  email: "abarria@hotmail.com",       total_paid: 23000 },
    {name: "Alexis",    last_name: "Gonzales",  address: "psj. las colonias",   state: State.find_by(name:"Alerce") ,       email: "agonles@gmail.com" ,        total_paid: 34000 },
    {name: "Sofia" ,    last_name: "Martinez",  address: "psje.los troncos",    state: State.find_by(name:"Alerce") ,       email: "sofimartinez12@gmail.com",  total_paid: 40000 },
    {name: "Fabian",    last_name: "Muñoz" ,    address: "pasj. Girasoles" ,    state: State.find_by(name:"Puerto Montt"),  email: "f.muñoz@gmail.com" ,        total_paid: 35000 },
    {name: "Eduardo",   last_name: "Llaipen",   address: "psj. Las Gaviotas",   state: State.find_by(name:"Quellón"),       email: "donw@gmail.com",            total_paid: 12500},
    {name: "Camila",    last_name: "Rodrigez",  address: "Las vertientes",      state: State.find_by(name:"Ancud"),         email: "cami.r@gmail.com",          total_paid: 35000},
    {name: "Pedro",     last_name: "Lopez" ,    address: "psj. las lolas" ,     state: State.find_by(name:"Puerto Varas"),  email: "pedro@hotmail.com",         total_paid: 12300 },
    {name: "Luis",      last_name: "Perez",     address: "psj. los colonos",    state: State.find_by(name:"Alerce") ,       email: "ags@gmail.com" ,            total_paid: 34500 },
    {name: "Valeria" ,  last_name: "Martin",    address: "psje.las trancas",    state: State.find_by(name:"Alerce") ,       email: "call12@gmail.com",          total_paid: 67000 }, 
    {name: "Valentina", last_name: "Muro" ,     address: "pasj. el pais" ,      state: State.find_by(name:"Puerto Montt"),  email: "fz@gmail.com" ,             total_paid: 56700 }, 
    {name: "Carlos",    last_name: "Borquez",   address: "avenida las rosas",   state: State.find_by(name:"Frutillar"),     email: "carlos-bor@gmail.com",      total_paid: 50000 }, 
    {name: "Carmen",    last_name: "Mansilla",  address: "calle las avellanas", state: State.find_by(name:"Llanquihue"),    email: "carmencitapop@outllok.cl",  total_paid: 90000 },
    {name: "Tulio",     last_name: "Triviño",   address: "Las petunias",        state: State.find_by(name:"Titirilquen"),   email: "pulentoso@gmail.com",       total_paid: 300000},
    {name: "Juan",      last_name: "Buro",      address: "avenida las petunias",state: State.find_by(name:"Frutillar"),     email: "juanr@gmail.com",           total_paid: 15000 },
    {name: "Josefina",  last_name: "Baldovino", address: "calle los lirios",    state: State.find_by(name:"Osorno") ,       email: "jose.baldo@gmail.com" ,     total_paid: 24000 },
    {name: "Martina",   last_name: "Carrera",   address: "calle los lirios",    state: State.find_by(name:"Llanquihue") ,   email: "don@gmail.com" ,            total_paid: 15000 },
    {name: "Carlos",    last_name: "Catruman",  address: "calle los lirios",    state: State.find_by(name:"Osorno") ,       email: "acevedo@gmail.com" ,        total_paid: 16990 },
    {name: "Estefanía", last_name: "Fernandez", address: "calle los lirios",    state: State.find_by(name:"Osorno") ,       email: "antonioo@gmail.com" ,       total_paid: 450000 },
    {name: "Mauro",     last_name: "Zapata",    address: "calle los lirios",    state: State.find_by(name:"LLanquihue") ,   email: "yacevedo@gmail.com" ,       total_paid: 120000 },
    {name: "Yenifer",   last_name: "Neira",     address: "calle los lirios",    state: State.find_by(name:"LLanquihue") ,   email: "harcoritoxxx0@gmail.com" ,  total_paid: 65990 }
  ]
)

