Supplier.create!([
  {name: "Illini", email: "admin@illinicorn.com", phone: "312-222-5555"},
  {name: "Hoosier", email: "admin@redandcorn.com", phone: "317-211-4455"},
  {name: "Huskers", email: "admin@gohuskers.com", phone: "402-323-3788"}
])

Popcorn.create!([
  {brand: "Fluffy", name: "Cheese & Pepper", image: "http://www.101cookbooks.com/mt-static/images/food/turmeric-popcorn-recipe-3.jpg", description: "", price: 12, active: true, supplier_id: 3},
  
  {brand: "Fluffy", name: "X-mas Tree", image: "http://www.twosisterscrafting.com/wp-content/uploads/2015/10/grinch-popcorn-step6.jpg", description: "", price: 23, active: true, supplier_id: 3},
  
  {brand: "Fluffy", name: "Colors", image: "http://1.bp.blogspot.com/-EU6YHXxELCA/US1TiUQSgdI/AAAAAAAAQ2A/Cr0nU0yUGUE/s1600/popcorn+colors+stacked.jpg", description: "We can make almost any colore you want (but it must be 3 days in advance)", price: 19, active: true, supplier_id: 3},
  
  {brand: "Chi-pop-go", name: "Classic Cheese", image: "http://www.garrettpopcorn.com/media/catalog/product/cache/1/small_image/410x325/9df78eab33525d08d6e5fb8d27136e95/_/3/_3x_183x145_product_cheesecorn.jpg", description: "Becasuse the classics never die.", price: 14, active: true, supplier_id: 1},
  
  {brand: "Chi-pop-go", name: "Chicago Style", image: "http://www.garrettpopcorn.com/media/catalog/product/cache/1/small_image/410x325/9df78eab33525d08d6e5fb8d27136e95/_/3/_3x_183x145_product_garrettmix.jpg", description: "The classic 1, 2, punch named after our amazing city.", price: 21, active: true, supplier_id: 1},
  
  {brand: "Chi-pop-go", name: "Cashew and caramel", image: "http://www.garrettpopcorn.com/media/catalog/product/cache/1/small_image/410x325/9df78eab33525d08d6e5fb8d27136e95/_/3/_3x_183x145_product_cashewcaramelcrisp.jpg", description: "Smoked cashews tossed in for fun and texture.", price: 25, active: true, supplier_id: 1},
  
  {brand: "Puffinss", name: "White Truffle", image: "http://cdn6.bigcommerce.com/s-uef0z5n/products/88/images/267/white-truffle__75563.1410818294.600.600.png?c=2", description: "Any choice with truffle shavings of what you want.", price: 87, active: true, supplier_id: 2},
  
  {brand: "Puffins", name: "Struck Gold", image: "http://cdn6.bigcommerce.com/s-uef0z5n/products/91/images/272/bercos-24__65264.1410818307.1280.1280.jpg?c=2", description: "Edible gold layer over any choice.", price: 100, active: true, supplier_id: 2},
  
  {brand: "Puffins", name: "5 Cheese", image: "http://cdn6.bigcommerce.com/s-uef0z5n/products/84/images/263/white-cheddar-hero__42625.1410818284.1280.1280.jpg?c=2", description: "The finest italian cheeses will be shresdded to delight your taste buds.", price: 35, active: true, supplier_id: 2}
])

#1 - expensive
#2 - wearable
#3 - game
#4 - flavor
#5 - color

CategoryProduct.create!([
                        {category_id: 1, product_id: 1}
                        {category_id: 5, product_id: 2}
                        {category_id: 1, product_id: 3}
                        {category_id: 2, product_id: 4}
                        {category_id: 2, product_id: 5}
                        {category_id: 2, product_id: 6}
                        {category_id: 1, product_id: 7}
                        {category_id: 1, product_id: 8}
                        {category_id: 1, product_id: 9}
                        ])