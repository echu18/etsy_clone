import React from 'react';

class ProductShow extends React.Component {
    componentDidMount() {
        this.props.fetchProduct(this.props.match.params.productId)
    }

    render() {
        if (this.props.product === undefined) return null;

        const { name, description, price, category, seller, photoUrls} = this.props.product;
        const urls = Array.from(photoUrls)

        // console.log('photos')
        return (
            <div className='product-card'>

                <p className='product-name'>{name}</p>
                <p className='product-description'>{description}</p>
                <p className='product-price'>${price}</p>
                {/* <p className='product-category'>{category}</p> */}

                {/* <div className='seller-info'>
                    <p>{seller.name}</p>
                     <img src={seller.photo}/> 
                </div> */}

        
                {/* <img className='product-photo' src={urls[1]}/> */}
                <div className='product-photos'>
                    {urls.map((url, idx) => {
                        return <img className='product-photo' src={url} key={idx}/>
                    })}
                </div>
            </div>
        )
    }
}

export default ProductShow;

