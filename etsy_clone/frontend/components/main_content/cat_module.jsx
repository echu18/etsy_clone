import React from 'react';
import ProductCard from '../products/product_card';

class CatModule extends React.Component {
    constructor(props) {
        super(props);
        // this.state = {
        // }
    }
   
    componentDidMount() {
        this.props.fetchProducts();
    }

    render() {
        const category = this.props.category;
        // const numProduct = this.props.num;
        const products = this.props.products.slice(0,6);
        if (!products) return null;

        return (
            <div className='cat-module-container'>
                {products.map((prod, idx) => {
                    return <div className='product-card-container' key={idx}>
                        <ProductCard product={prod}/>
                    </div>
                })}
            </div>
        )
    }
}

export default CatModule;