import React from "react";

class ScrollToTop extends React.Component {
    componentDidUpdate(prevProps) {
        if (
            this.props.location.pathname !== prevProps.location.pathname
        ) {
            window.scrollTo(0, 0);
        }
    }

    render() {
        return null;
    }
}


export default ScrollToTop;