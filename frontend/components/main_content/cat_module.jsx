import React from 'react';
import ProductCard from '../products/product_card';

class CatModule extends React.Component {
    constructor(props) {
        super(props);
        // this.state = {
        // }
    }
   
    componentDidMount() {
        // this.props.fetchProducts();
    }

    render() {
        if (!this.props.row) return null;
        // const category = this.props.category;
        // const startnum = this.props.startnum;
        // const endnum = this.props.endnum;
        // const products = this.props.slice(startnum,endnum);
        const row = this.props.row
        return (
            <div id='cat-module-container' className={row.length === 6 ? 'centered' : 'flex-start'}>
                {row.map((prod, idx) => {
                    return <div className='product-card-container' key={idx}>
                        <ProductCard product={prod}/>
                    </div>
                })}
            </div>
        )
    }
}

export default CatModule;