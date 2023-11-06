Array.jsx
```js
import ReactDOM from 'react-dom';

import React, { useState } from 'react'

let arr=[]
export default function Array() {
    const [num, setnum] = useState(0)

    const incnum = () => {
        setnum(num + 1)
    }

    const clickhandler = () => {
        incnum()
        arr.push(num)
    }
    return (
        <div>
            <button onClick={clickhandler}>inc</button>
            {arr.map(arr => {
                return (<p>Cube of {arr} is {arr*arr*arr}</p>)
            })}

        </div>
    )
}
```