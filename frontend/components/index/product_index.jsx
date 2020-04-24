import React from 'react'
import {withRouter} from 'react-router'
import CatModuleContainer from '../../components/main_content/cat_module_container'
import {leftPageArrow, rightPageArrow} from '../../../app/assets/images/svgs/icons'



class ProductIndex extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            currentPage: 0,
            pages: null,
            results: false
        }

        this.handlePrevPage = this.handlePrevPage.bind(this);
        this.handleNextPage = this.handleNextPage.bind(this);
        this.handlePageClick = this.handlePageClick.bind(this);
        this.handleBackBtn = this.handleBackBtn.bind(this);
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
            this.setState({pages: this.organizeProducts(nextProps.products), currentPage: 0});
        }
    }

    // componentDidUpdate(prevState) {
    //     if (this.state.pages != prevState.pages) {

    //     }
    // }

    
   

    
    filterProducts(e, filterType, filterValue){
        e.preventDefault()
        debugger
        
        let products = this.props.products;

        switch (filterType) {
            case 'category':


            case 'price':
                switch (filterValue) {
                    case 'any':
                        debugger
                        break;
                    case 'under 25':
                        products = products.filter(function(product) {return parseFloat(product.price) < 25})
                        break;
                    case '25 to 250':
                        products = products.filter(function (product) {return parseFloat(product.price)>= 25 && parseFloat(product.price)<= 250})
                        break;
                    case '250 to 500':
                        products = products.filter(function (product) {return parseFloat(product.price)>= 250 && parseFloat(product.price)<= 500})
                        break;
                    case 'over 500':
                        products = products.filter(function (product) {return parseFloat(product.price)> 500})
                        break;
                }

        }
            
        debugger
        if (products.length === 0) {
            this.setState({results: false})
        } else {
            this.setState({ pages: this.organizeProducts(products)});
        }
    }




    organizeProducts(products){
        // if (products.length === 0) return [];

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
                    tempRow = [];
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

        if (!!pages) {
            this.setState({ results: true })
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

    handleBackBtn(e) {
        e.preventDefault()
        window.location.reload()
        // this.props.history.go(-1)
    }
    
    render() {
        window.scrollTo(0, 0);
        
        const noResults = "We couldn\'t find any results"


        if (this.state.results === false){
            return (
                <div>   
                    <p>{noResults}</p>
                    <button onClick={e => this.handleBackBtn(e)}>Go back</button>
                </div>
            )
        } else if (!this.props.products || !this.state.pages[0])  {
            return null;
        } 

        // || !this.state.pages[0])

        // || !this.state.pages[this.state.currentPage]
   
        
        return (
            <div className='index-container'>

                <div className='index-filter-sidebar'>
                    <input type='radio' name='price-filter'bclassName='price-filter-btn' onClick={e => this.filterProducts(e, 'price', 'any')} >Any Price</input>
                    <input type='radio' name='price-filter'bclassName='price-filter-btn' onClick={e => this.filterProducts(e, 'price', 'under 25')} >Under $25</input>
                    <input type='radio' name='price-filter'bclassName='price-filter-btn' onClick={e => this.filterProducts(e, 'price', '25 to 250')} >$25 to $250</input>
                    <input type='radio' name='price-filter'bclassName='price-filter-btn' onClick={e => this.filterProducts(e, 'price', '250 to 500')} >$250 to $500</input>
                    <input type='radio' name='price-filter'bclassName='price-filter-btn' onClick={e => this.filterProducts(e, 'price', 'over 500')} >Over $500</input>
                </div>



                <div className='index-products'>
                    {this.state.pages[0].length === 0 || this.state.pages === 0 || !this.state.pages[this.state.currentPage] ? <p>{noResults}</p> : (
                    
                    this.state.pages[this.state.currentPage].map((row, idx)=>{
                        return (
                                <div className='index-row'>
                                    <CatModuleContainer row={row} />
                                </div>
                                )
                    }))}
                </div>
                
                <div className='index-btn-container'>
                    {this.state.pages.length > 1 ? <p className='index-btn-text'>There's so much more for you to discover</p> : null}

                    <div className='index-btns-group'>
                        <button className={`index-btn ${this.state.currentPage === 0 ? 'grayed-btn' : null}`} onClick={this.handlePrevPage}>{leftPageArrow}</button>
                        {this.state.pages.map((page, idx) => <button onClick={e => this.handlePageClick(e, idx)}className={`index-btn ${this.state.currentPage === idx ? 'active-page' : null}`}>{idx + 1}</button>)}
                        <button className={`index-btn ${this.state.currentPage === this.state.pages.length-1 ? 'grayed-btn' : null}`} onClick={this.handleNextPage}>{rightPageArrow}</button>
                    </div>
                </div>
            </div>

        )
    }
}

export default withRouter(ProductIndex);