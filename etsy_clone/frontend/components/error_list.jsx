import React from 'react';

const ErrorList = ({ errors }) => {
    if (errors.length === 0) return null;
    const errorItems = errors.map((error, idx) => <p key={idx}>{error}</p>)

    return (
        <div className="error-list">
            {errorItems}
        </div>
    )
};

export default ErrorList;