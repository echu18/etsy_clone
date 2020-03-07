import React from 'react';
import ProductImageContainer from './product_image_container';


class ProductShow extends React.Component {
    constructor(props) {
        super(props);
        // this.state={
            // readyToRender: false
            // product: this.props.product
        // }
    }
    componentDidMount() {
        // Promise.all([this.props.fetchProduct(this.props.match.params.productId), 
        //     this.props.fetchUser(this.props.products[this.props.productId].seller_id)])
        //     .then(this.setState({readyToRender: true}))
        this.props.fetchProduct(this.props.match.params.productId)
        // this.props.fetchUser(product.seller_id)
    }
    

    componentDidUpdate(prevProps) {
     // check if product id has changed, if change - fetch new product
    }


    render() {
        // if (!this.props.readyToRender) return null;
        // if (this.props.productId === undefined) return null;
        // if (this.props.user === undefined) return null;

        const { name, description, price, category, photoUrls, seller_id} = this.props.product;
        const urls = Array.from(photoUrls)

        // const seller = this.props.product.seller_id;
        
        return (
            <div className='product-listing-container'>
                <ProductImageContainer urls={urls} product={this.props.product} {...this.props} />

                <div className='product-sidebar'>
                    <p className='review-header'>Reviews ********</p>
                    <p className='product-name'>{name}</p>
                    <p className='product-price'>${price}</p>
                    <p className='product-description'>{description}</p>
                </div>
                {/* <p className='product-category'>{category}</p> */}


                    {/* <p className='seller=info'>{this.props.users[seller].username}</p> */}
             
            </div>
        )
    }
}


export default ProductShow;

