Book.destroy_all
Patron.destroy_all

Book.create title: "Catcher in the Rye", author: "J.D. Salinger", year: 1951
Book.create title: "On the road", author: "Jack Kerouac", year: 1956
Book.create title: "Moby Dick", author: "Herman Melville", year: 1851

Patron.create name: "Jesse Wolgamott"
Patron.create name: "Chunda Bear"
