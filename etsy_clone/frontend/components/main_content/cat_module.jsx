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
        const numProduct = this.props.num;
        const products = this.props.products;
        // debugger
        if (!products) return null;

        return (
            <div className='cat-module-container'>
                {products.map((prod, idx) => {
                    return <div className='cat-prod-card' key={idx}>
                        <ProductCard product={prod}/>
                        <ProductCard product={prod}/>
                    </div>
                })}
            </div>
        )
    }
}

export default CatModule;