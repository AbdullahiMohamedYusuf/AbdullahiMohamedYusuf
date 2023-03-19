import React, { useState } from 'react';
import ProductCard from './ProductCard';

function HomePage() {
  const [products, setProducts] = useState([
    {
      id: 1,
      name: 'Product 1',
      price: 19.99,
      image: 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/c76e2119-acb7-4944-9085-d4f5ae2bda4a/go-flyease-easy-on-off-shoes-MWN8NF.png'
    },
    {
      id: 2,
      name: 'Product 2',
      price: 29.99,
      image: 'https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/71D9ImsvEtL._UY500_.jpg'
    },
    {
      id: 3,
      name: 'Product 3',
      price: 39.99,
      image: 'https://assets.adidas.com/images/w_600,f_auto,q_auto/bd43ce71f589498ab6b1aad6009a0e6e_9366/Superstar_Shoes_Vit_EG4958_07_standard.jpg'
    },
    {
      id: 3,
      name: 'Product 4',
      price: 39.99,
      image: 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/09c5ea6df1bd4be6baaaac5e003e7047_9366/Forum_Low_Shoes_Vit_FY7756_01_standard.jpg'
    }
  ]);

  return (
    <div>
      <div className="product-list">
        {products.map(product => (
          <ProductCard key={product.id} product={product} />
        ))}
      </div>
    </div>
  );
}

export default HomePage;
