import React from 'react';
import { Link } from 'react-router-dom';
import CategoryDropdownContainer from './category_dropdown_container'



// Links to each category
// const categories = ['Jewelry & Clothing', 'Tech Accessories', 'Art & Collectibles', 'Anime & Gaming', 'Memes', 'Cosplay'];

const CategoriesBar = props => (
    <ul>
        {/* {categories.map((cat) => {
            return <li className='cat-single'>
                        <h2 className='navbar-cat-header'>{cat}</h2>
                        <CategoryDropdownContainer header={cat} />
                    </li>
        })} */}
        {/* <li className='cat-single'>
            <h2 className='navbar-cat-header'>Gifts</h2>
            <CategoryDropdownContainer header={'Gifts'} />
        </li> */}
        {/* <div className='gift-icon'>{giftIcon}</div> */}
    </ul>
)

export default CategoriesBar;
