//rafce
import React from 'react'

const SummeryCard = () => {
  return (

    <div className='mx-auto'>
      <div className='flex flex-warp gap-4'>
        {/*Left*/}
        <div className='w-2/4'>
          <div className='bg-gray-100 p-4 rounded-md botder 
          border shadow-md space-y-4'>
            <h1>ที่อยู่ในการจัดส่ง</h1>
            <textarea className='w-full px-2'/>
          </div>
        </div>
        {/*RIGHT*/}
        <div className='w-2/4'>
          <div className='bg-gray-100'>
            <h1>Summery</h1>
          </div>
        </div>
      </div>
    </div>
  )
}

export default SummeryCard