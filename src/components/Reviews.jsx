import React from 'react'
// import React, { useState } from "react"
import './CSS/Reviews.css';
// import icon1 from './images/icon1.jpg'
// import icon2 from './images/icon2.jpg'
// import icon3 from './images/icon3.jpg'
// import RenderReview from "./RenderReviews.jsx"
// function Reviews({ reviews, handleClick, handleFetch }) {
//     const [review, setReview] = useState({
//         name: "",
//         reviews: "",  // function handleChange(e) {
    //     console.log(e.target.value)
    //     let name = e.target.name
    //     let value = e.target.value
    //     setReview({
    //         ...review, [name]: value
    //     })

//         date: ""
//     })
  
//     }

//     function handleSubmit(e) {
//         e.preventDefault()
//         fetch("", {
//             method: "POST",
//             headers: {
//                 "Content-Type": "application/json"
//             },
//             body: JSON.stringify(review)
//         })
//             .then(r => r.json())
//             .then((data) => {
//                 // console.log(data)
//             })
//         handleFetch()

//     }

//     return (
//         <div>
//             <div className="remarks-form">
//                 <form onSubmit={ handleSubmit }>
//                     <input onChange={ handleChange } type="text" placeholder="Fill your reviews" name="remarks" />
//                     <input onChange={ handleChange } type="text" placeholder="Name" name="name" />
//                     <input onChange={ handleChange } type="date" placeholder="Date" name="date" />
//                     <button>Submit</button>
//                 </form>
//             </div>
//             <div className="render-box-main">
//                 { reviews.map((review) => <RenderReview key={ review.id } id={ review.id } review={ review } handleClick={ handleClick } />) }
//             </div>

//         </div>
//     )
// }
// const Reviews = () => {
//     const [rating, setRating] = useState(0);
//     return (
//       <div className="star-rating">
//         {[...Array(5)].map((star, index) => {
//           index += 1;
//           return (  
//             <button
//               type="button"
//               key={index}
//               className={index <= rating ? "on" : "off"}
//               onClick={() => setRating(index)}
//             >
//               <span className="star">&#9733;</span>
//             </button>
//           );
//         })}
const products = [
  {
    id: 1,
    name: 'Basic Tee',
    href: '#',
    imageSrc: 'https://tailwindui.com/img/ecommerce-images/product-page-01-related-product-01.jpg',
    imageAlt: "Front of men's Basic Tee in black.",
    price: '$35',
    color: 'Black',
  },
  // More products...
]
export default function Example() {
  return (
    <div className="bg-white">
      <div className="mx-auto max-w-2xl py-16 px-4 sm:py-24 sm:px-6 lg:max-w-7xl lg:px-8">
        <h2 className="text-2xl font-bold tracking-tight text-gray-900">Customers also purchased</h2>
        <div className="mt-6 grid grid-cols-1 gap-y-10 gap-x-6 sm:grid-cols-2 lg:grid-cols-4 xl:gap-x-8">
          {products.map((product) => (
            <div key={product.id} className="group relative">
              <div className="min-h-80 aspect-w-1 aspect-h-1 w-full overflow-hidden rounded-md bg-gray-200 group-hover:opacity-75 lg:aspect-none lg:h-80">
                <img
                  src={product.imageSrc}
                  alt={product.imageAlt}
                  className="h-full w-full object-cover object-center lg:h-full lg:w-full"
                />
              </div>
              <div className="mt-4 flex justify-between">
                <div>
                  <h3 className="text-sm text-gray-700">
                    <a href={product.href}>
                      <span aria-hidden="true" className="absolute inset-0" />
                      {product.name}
                    </a>
                  </h3>
                  <p className="mt-1 text-sm text-gray-500">{product.color}</p>
                </div>
                <p className="text-sm font-medium text-gray-900">{product.price}</p>
              </div>
            </div>
          ))}
        </div>
      </div>
    </div>
  )
}