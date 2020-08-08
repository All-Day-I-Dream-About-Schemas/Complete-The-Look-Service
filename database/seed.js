//generate fake products
//INSERT INTO products (SKU, productName, productDetail, imagePath, regPrice, salePrice, productType) VALUES ('SKU500', 'TRAINING 3-STRIPES TEE', 'PLACEHOLDER', 'PLACEHOLDER', 40.00, 28.00, 'Training');
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

seedProducts();

//db.end()