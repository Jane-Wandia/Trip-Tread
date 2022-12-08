import React from 'react'
import './CSS/About.css'
import img1 from './images/img1.jpg'
import img2 from './images/img2.jpg'
import img3 from './images/img3.jpg'
import img4 from './images/img4.jpg'

function About() {
  return (
    <div className='whole'>
            <div className='section-a'>
                <div className='img1'>
                <img src={img1} alt=''/>
                </div>
                <div className='flex'>
                  <img src={img2} alt=''/>
                  <img src={img3} alt=''/>
                  <img src={img4} alt=''/>
                </div>
            </div>
            <div class="main">
                    <h2>About Me</h2>
                    <h5>Web Developer <span>& Web Designer</span></h5>
                    <p>I am a student at Moringa School pursuing a full stack 
                        development course, building my skills on web designing and web developing. </p>
            </div>  
    </div>
  )
}

export default About;