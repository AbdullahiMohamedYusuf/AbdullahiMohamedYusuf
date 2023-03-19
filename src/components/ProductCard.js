import React from "react";
import "../styles/card.css";
function ProductCard(props) {
  const { id, name, price, image } = props.product;

  return (
    <div className="product-card">
      <img src={image} alt={name} />
      <div className="price">
        <h2>{name}</h2>
        <p>{`Price: $${price}`}</p>
      </div>
      <button><i class="fa-solid fa-cart-shopping"></i></button>

    </div>
  );
}

export default ProductCard;
