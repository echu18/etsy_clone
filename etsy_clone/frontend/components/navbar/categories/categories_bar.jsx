import React from 'react';
import { Link } from 'react-router-dom';


// Links to each category
const categories = ['Jewelry & Accessories', 'Clothing & Shoes', 'Home & Living', 'Wedding & Party', 'Toys & Entertainment', 'Art & Collectibles', 'Craft Supplies', 'Vintage', 'Gifts'];

const categoriesBar = props => (
    <ul>
        {categories.map((cat) => {
            return <li className='cat-single'>
                        <h2 className='cat-header'>{cat}</h2>
                        <categoryDropdownContainer header={cat} />
                    </li>
        })}
    </ul>
)

export default categoriesBar;