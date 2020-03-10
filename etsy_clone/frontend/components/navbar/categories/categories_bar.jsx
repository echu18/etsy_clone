import React from 'react';
import { Link } from 'react-router-dom';
import { giftIcon } from '../../../../app/assets/images/svgs/icons';



// Links to each category
const categories = ['Jewelry & Accessories', 'Clothing & Shoes', 'Home & Living', 'Wedding & Party', 'Toys & Entertainment', 'Art & Collectibles', 'Craft Supplies', 'Vintage'];

const categoriesBar = props => (
    <ul>
        {categories.map((cat) => {
            return <li className='cat-single'>
                        <h2 className='cat-header'>{cat}</h2>
                        <categoryDropdownContainer header={cat} />
                    </li>
        })}
        <li className='cat-single'>
            <h2 className='cat-header'><div className='gift-icon'>{giftIcon}</div>Gifts</h2>
            <categoryDropdownContainer header={'Gifts'} />
        </li>

    </ul>
)

export default categoriesBar;
