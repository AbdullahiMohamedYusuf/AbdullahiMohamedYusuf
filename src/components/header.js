import React, { Component } from "react";
import "../styles/global.css";
function Header() {
  return (
    <header>
      <div className="container-header">
        <div className="media-container">
          <div className="media">
            <div className="social">
              <ul>
                <li>
                  <a href="#">
                    <i class="fa-brands fa-square-twitter"></i>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa-brands fa-square-facebook"></i>
                  </a>
                </li>
                <li>
                  <a href="#">
                    <i class="fa-brands fa-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
            <div className="social-info">
              <h4>FREE SHIPPING THIS WEEK ORDER OVER - $35</h4>
            </div>
            <div className="Lang">
              <select>
                <option value="actual value 1">English</option>
                <option value="actual value 2">Swedish</option>
                <option value="actual value 3">Arabic</option>
              </select>
            </div>
          </div>
        </div>
      </div>
      <nav>
        <h1>LUX</h1>
        <div class="search-container">
          <form action="/search">
            <input type="text" placeholder="Search..." />
            <button type="submit">
              <i class="fa fa-search"></i>
            </button>
          </form>
        </div>

        <div className="nav">
          <ul>
            <li>
              <a href="#"></a>
              <i id="user" class="fa-regular fa-user"></i>
            </li>
            <li id="fav">
              <a href="#"></a>
              <i  class="fa-solid fa-heart"></i>
            </li>
            <li>
              <a href="#"></a>
              <i id="link" class="fa-solid fa-bag-shopping"></i>
            </li>
          </ul>
        </div>
      </nav>
      <div className="category">
        <li>
          <a href="#">HOME</a>
        </li>
        <li>
          <a href="#">CATEGORIES</a>
        </li>
        <li>
          <a href="#">MEN'S</a>
        </li>
        <li>
          <a href="#">WOMEN's</a>
        </li>
        <li>
          <a href="#">KIDS</a>
        </li>
        <li>
          <a href="#">ACCESSORIES</a>
        </li>
      </div>
    </header>
  );
}

export default Header;
