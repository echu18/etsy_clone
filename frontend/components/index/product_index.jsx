import React from 'react'
import CatModuleContainer from '../../components/main_content/cat_module_container'


class ProductIndex extends React.Component {
    constructor(props){
        super(props);

    }

    componentDidMount() {
        this.props.fetchProducts();
    }

    organizeProducts(products){
        debugger
        const organizedProducts = [];
        let temp = [];
        
        for (let i = 0; i < products.length; i++){
            if (temp.length === 6) {
                organizedProducts.push(temp);
                temp = [];
            } else {
                temp.push(products[i])
            }
        }
        debugger
        return organizedProducts;
    }

    
    render() {
        if (!this.props.products) return null;

        const productRow = this.organizeProducts(this.props.products)
        debugger
        return (
            <div className='index-container'>
                <div className='cat-mod'>
                    {productRow.map((row, idx)=> {
                        return <CatModuleContainer props={row} startnum={0} endnum={row.length}/>
                    })}
                </div>
            </div>
        )
    }
}

export default ProductIndex;