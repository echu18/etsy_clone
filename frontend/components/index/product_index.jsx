import React from 'react'
import {withRouter} from 'react-router'
import CatModuleContainer from '../../components/main_content/cat_module_container'
import {leftPageArrow, rightPageArrow} from '../../../app/assets/images/svgs/icons'
import { receiveProducts } from "../../actions/product_actions";
import LoadingPage from "../loading_page";

class ProductIndex extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            currentPage: 0,
            pages: null,
            results: false,
            checked: null, 
            rendered: false
        }

        this.handlePrevPage = this.handlePrevPage.bind(this);
        this.handleNextPage = this.handleNextPage.bind(this);
        this.handlePageClick = this.handlePageClick.bind(this);
        this.handleBackBtn = this.handleBackBtn.bind(this);
        this.organizeProducts = this.organizeProducts.bind(this);
        this.filterProducts = this.filterProducts.bind(this);
    }

    componentDidMount() {
        // this.props.searchProducts()

        // .then(products => receiveProducts(products))
        //     .done(() => this.setState({ rendered: true }))
        // this.setState({ rendered: true })

        // this.props.fetchProducts()
            // products => this.props.receiveProducts(products)
            // .done(() => this.setState({ rendered: true })); 

            // if (!this.props.products) {
            //  this.setState({ rendered: true }); 
            // }
    }

    componentWillUnmount(){
        // this.props.clearProducts()
    }

    componentWillReceiveProps(nextProps, nextState){
        if (!this.state.pages || this.props.products !== nextProps.products || this.state.currentPage !== nextState.currentPage) {
            this.setState({pages: this.organizeProducts(nextProps.products), currentPage: 0, checked: 'any', rendered: true});
        }
    }

  
    // componentDidUpdate(prevProps, prevState) {
    //    if (this.state.currentPage !== prevState.currentPage || this.props.products !== prevProps.products ) {
    //          this.setState({ rendered: true }); 
    //     }
    // //    if (this.state.currentPage !== prevState.currentPage ) {
    // //         (products) => receiveSplashProducts(products)
    // //         .done(() => this.setState({ rendered: true })); 
    // //     }
    // }
    


    
    filterProducts(e, filterType, filterValue){
        e.preventDefault()
        
        let products = this.props.products;

        switch (filterType) {
            case 'category':


            case 'price':
                switch (filterValue) {
                    case 'any':
                        
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
            
        if (products.length === 0) {
            this.setState({results: false, checked: filterValue})
        } else {
            this.setState({ pages: this.organizeProducts(products), checked: filterValue, currentPage: 0});
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
                if (tempPage.length === 5) {
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
        // window.location.reload()
        // this.props.history.go(-1)
    }
    
    render() {
        window.scrollTo(0, 0);
        
        const noResults = "We couldn\'t find any results"


        if (this.state.rendered === true && this.state.results === false){
            return (
                <div>   
                    <p>{noResults}</p>
                    {/* <button onClick={e => this.handleBackBtn(e)}>Go back</button> */}
                    <button onClick={e => this.filterProducts(e, 'price', 'any')}>Go back</button>
                </div>
            )
        // } else if (!this.props.products || !this.state.pages[0])  {
        } else if (!this.props.products || !this.state.pages || !this.state.pages[0])  {
            return null;
        } 

        // || !this.state.pages[0])

        // || !this.state.pages[this.state.currentPage]
   
        

        if (!this.state.rendered) {
            return <LoadingPage />
        } else {
            return (
                <div className='index-container'>

                    <div className='index-filter-sidebar'>



                        <div className='price-filter'>
                            <p>Price ($)</p>
                            <label>
                                <button className={`price-filter-btn ${this.state.checked === 'any' ? 'price-filter-btn-checked' : null}`} onClick={e => this.filterProducts(e, 'price', 'any')} ></button>Any Price</label>

                            <label>
                                <button className={`price-filter-btn ${this.state.checked === 'under 25' ? 'price-filter-btn-checked' : null}`} onClick={e => this.filterProducts(e, 'price', 'under 25')} ></button>Under $25</label>

                            <label>
                                <button className={`price-filter-btn ${this.state.checked === '25 to 250' ? 'price-filter-btn-checked' : null}`} onClick={e => this.filterProducts(e, 'price', '25 to 250')} ></button>$25 to $250</label>

                            <label>
                                <button className={`price-filter-btn ${this.state.checked === '250 to 500' ? 'price-filter-btn-checked' : null}`} onClick={e => this.filterProducts(e, 'price', '250 to 500')} ></button>$250 to $500</label>

                            <label>
                                <button className={`price-filter-btn ${this.state.checked === 'over 500' ? 'price-filter-btn-checked' : null}`} onClick={e => this.filterProducts(e, 'price', 'over 500')} ></button>Over $500</label>
                        </div>
                    </div>



                    <div className='index-products'>
                        { (this.state.pages[0].length === 0 || this.state.pages === 0 || !this.state.pages[0] || !this.state.pages[this.state.currentPage]) ? <p>{noResults}</p> : (
                        
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
}

export default withRouter(ProductIndex);