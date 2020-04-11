import React from 'react'
import CatModuleContainer from '../../components/main_content/cat_module_container'


class ProductIndex extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            currentPage: 0,
            pages: null
        }
        this.handlePrevPage = this.handlePrevPage.bind(this);
        this.handleNextPage = this.handleNextPage.bind(this);
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
  

    organizeProducts(products){
        const productRows = [];
        let tempRow = [];
        
            for (let i = 0; i < products.length; i++){
                if (tempRow.length === 6) {
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

    
    render() {
        if (!this.props.products || !this.state.pages ) {
            return null;
        } 
   
        const noResults = "We couldn\'t find any results"
        
        return (
            <div className='index-container'>
                <div className='index-products'>
                    {this.props.products.length === 0 ? <p>{noResults}</p> : (
                    
                    this.state.pages[this.state.currentPage].map((row, idx)=>{
                        return (
                                <div className='index-row'>
                                    <CatModuleContainer row={row} />
                                </div>
                                )
                    }))}
                </div>

                <button onClick={this.handlePrevPage}>Previous Page</button>
                <button onClick={this.handleNextPage}>Next Page</button>
            </div>

        )
    }
}

export default ProductIndex;