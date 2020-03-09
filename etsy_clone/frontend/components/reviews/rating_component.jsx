import React from 'react';
import { starIcon } from '../../../app/assets/images/svgs/icons'



export const Rating = ({rating}) => {
    let starArr = []
    for (let i = 0; i < rating; i++) {
        starArr.push({starIcon});
    }
    // return starArr
    return {starIcon}
}