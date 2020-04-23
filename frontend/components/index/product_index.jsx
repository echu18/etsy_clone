import React from 'react'
import CatModuleContainer from '../../components/main_content/cat_module_container'
import {leftPageArrow, rightPageArrow} from '../../../app/assets/images/svgs/icons'

class ProductIndex extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            currentPage: 0,
            pages: null,
            rerender: false
        }
        this.handlePrevPage = this.handlePrevPage.bind(this);
        this.handleNextPage = this.handleNextPage.bind(this);
        this.handlePageClick = this.handlePageClick.bind(this);
        this.organizeProducts = this.organizeProducts.bind(this);
        this.filterProducts = this.filterProducts.bind(this);
    }

    componentDidMount() {
        // this.props.fetchProducts();
    }

    componentWillUnmount(){
        this.props.clearProducts()
    }

    componentWillReceiveProps(nextProps){
        if (!this.state.pages || this.props.products !== nextProps.products){
            this.setState({pages: this.organizeProducts(nextProps.products)});
        }
    }

    componentDidUpdate(prevState) {
        if (prevState.pages !== this.state.pages) {
            this.setState({rerender: true})
        }
    }
   

    
    filterProducts(e, filterType, filterValue){
        e.preventDefault()
        // debugger
        
        let products = this.props.products;

        switch (filterType) {
            case 'category':


            case 'price':
                switch (filterValue) {
                    case 'any':
                    // products = this.props.products;
                    case 'under 25':
                    products = products.filter((product => parseInt(product.price )< 25))
                    case '25 to 250':
                    products = products.filter((product => parseInt(product.price )>= 25 && parseInt(product.price )<= 250))
                    case '250 to 500':
                        products = products.filter((product => parseInt(product.price )>= 250 && parseInt(product.price )<= 500))
                    case 'over 500':
                    products = products.filter((product => parseInt(product.price )> 500))
            
                }

        }
        // debugger
        this.setState({ pages: this.organizeProducts(products)});
    }




    organizeProducts(products){
        const productRows = [];
        let tempRow = [];
        
            for (let i = 0; i <= products.length; i++){
                
                if (tempRow.length === 3) {
                    tempRow.push(products[i])
                    productRows.push(tempRow);
                    tempRow = [];
                } else if (i === products.length - 1){
                    tempRow.push(products[i])
                    productRows.push(tempRow);
                } else {
                    tempRow.push(products[i])
                }
            }
        const pages = []
        let tempPage = []

            for (let i = 0; i < productRows.length; i++) {
                if (tempPage.length === 3) {
                    pages.push(tempPage);
                    tempPage = [];
                } else if (i === productRows.length-1) {
                    tempPage.push(productRows[i])
                    pages.push(tempPage);
                } else {
                    tempPage.push(productRows[i])
                }
            }

        return pages;
    }



    // catRows (productRow) {
    //     // const productRow = this.organizeProducts(this.props.products);
        
    //     return (
    //             {productRow.map((row, idx) => {
    //                 debugger
    //                 return (
    //                     <div className='index-row'>
    //                         {<CatModuleContainer row={row} />}
    //                     </div>)
    //             })}
    //         </div>
    //     )
    // }

    handleNextPage(e){
        e.preventDefault();

        const nextPage = this.state.currentPage + 1;
        if (nextPage > this.state.pages.length-1) {
            return null;
        } else {
            this.setState({currentPage: nextPage})
        }
    }

    handlePrevPage(e){
        e.preventDefault();

        const prevPage = this.state.currentPage - 1;
        if (prevPage < 0) {
            return null;
        } else {
            this.setState({currentPage: prevPage});
        }
    }

    handlePageClick(e, pageIdx) {
        e.preventDefault();
        this.setState({ currentPage: pageIdx });
    }

    
    render() {
        if (!this.props.products || this.state.pages === null || !this.state.pages[this.state.currentPage]) {
            return null;
        } 
   
        const noResults = "We couldn\'t find any results"
        
        return (
            <div className='index-container'>

                <div className='index-filter-sidebar'>
                    <button className='price-filter-btn' onClick={e => this.filterProducts(e, 'price', 'any')} >Any Price</button>
                    <button className='price-filter-btn' onClick={e => this.filterProducts(e, 'price', 'under 25')} >Under $25</button>
                    <button className='price-filter-btn' onClick={e => this.filterProducts(e, 'price', '25 to 250')} >$25 to $250</button>
                    <button className='price-filter-btn' onClick={e => this.filterProducts(e, 'price', '250 to 500')} >$250 to $500</button>
                    <button className='price-filter-btn' onClick={e => this.filterProducts(e, 'price', 'over 500')} >Over $500</button>


                </div>



                <div className='index-products'>
                    {this.state.pages[0].length === 0 ? <p>{noResults}</p> : (
                    
                    this.state.pages[this.state.currentPage].map((row, idx)=>{
                        return (
                                <div className='index-row'>
                                    <CatModuleContainer row={row} />
                                </div>
                                )
                    }))}
                </div>
                
                <div className='index-btn-container'>
                    <button className={`index-btn ${this.state.currentPage === 0 ? 'grayed-btn' : null}`} onClick={this.handlePrevPage}>{leftPageArrow}</button>
                {this.state.pages.map((page, idx) => <button onClick={e => this.handlePageClick(e, idx)}className={`index-btn ${this.state.currentPage === idx ? 'active-page' : null}`}>{idx + 1}</button>)}
                    <button className={`index-btn ${this.state.currentPage === this.state.pages.length-1 ? 'grayed-btn' : null}`} onClick={this.handleNextPage}>{rightPageArrow}</button>
                </div>
            </div>

        )
    }
}

export default ProductIndex;