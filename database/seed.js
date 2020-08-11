//generate fake data

const db = require('./index.js');
const faker = require('faker');


let name1 = ['TRAINING', 'GRAPHIC', 'CLASSIC', 'BASIC', 'ESSENTIAL', 'ORIGINAL', '3-STRIPES','CONFIDENCE', 'FLORAL', 'BOLD', 'ICONIC'];
let name2 = ['TEE', 'SOCKS', 'BOTTOMS', 'TOP', 'JACKET'];

let reg = [60, 50, 40]
let sale = [35, 28, null]
let cat = ['Originals', 'Training', 'Essentials']
let images = ['socks.jpg', 'tee.jpg', 'tights.jpg', 'tracktop.jpg']

const random = (min, max) => {
  return Math.floor(Math.random() * (max-min)) + min
};

const seedProducts = () => {
  for (let i = 0; i <= 200; i++) {
    let sku = `SKU${500+i}`;
    let prodName = `${name1[random(0,10)]} ${name1[random(0,10)]} ${name2[random(0,4)]}`;
    let prodDesc = faker.lorem.sentences();
    let image = images[random(0,3)];
    let price = reg[random(0,2)];
    let sprice = sale[random(0,2)];
    let type = cat[random(0,2)];
    let postQuery = `INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('${sku}', '${prodName}', '${prodDesc}', '${image}', ${price}, ${sprice}, '${type}')`;
    console.log(postQuery)
    db.connection.query(postQuery, (err, data) => {
      if (err) {
        console.log(`failed at product id ${i}`,err)
      } else {
        console.log(`added product id ${i}`)
      }
    })
  }
}

const createProdByShoe = () => {
  //make a loop to insert 4 prod per 1 shoe
  for (let i = 1; i <= 100; i++) {
    //for every shoe sku, link 4 random product sku
    let shoe = 'SKU'+
    let four = []
    for (let j = 1; j <= 4; j++) {
      //prod sku range (500-700)
      four.push(`SKU${random(500,700)}`)
    }
    let postQuery = `INSERT INTO products_by_shoe (shoeSKU, prodSKU) VALUES ()`
  }
    //insert into product_by_shoe table
}

seedProducts();
createProdByShoe();

//db.end()