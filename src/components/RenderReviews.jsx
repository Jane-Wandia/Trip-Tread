import React from 'react'
import img3 from './images/img3.jpg'
function RenderReviews({id, handleClick,remark}) {
    function handleDelete(){
        handleClick(id)
    }
  return (
    <div className="render-box-main">
      <div className='render-box'>
        <h4>Parents name: </h4><p>{ remark.name }</p>
        <h4>Remarks: </h4><p>{ remark.remarks }</p>
        <h4>Date: </h4><p>{ remark.date }</p>
        <button className="deleteBtn" onClick={ handleDelete }><img src={ img3 } className="App-logo" alt="Delete" /></button>
      </div>
    </div>
  )
}

export default RenderReviews;