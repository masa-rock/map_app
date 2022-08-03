import React, { useState } from "react"
import axios from 'axios'
import PropTypes from "prop-types"

axios.defaults.headers.common = {
    'X-Requested-With': 'XMLHttpRequest',
    'X-CSRF-TOKEN': document.querySelector('meta[name="csrf-token"]').getAttribute('content')
};

function ChangeTag() {
  const [name, setName] = useState('');
  const handleNameChange = (event) => {
    axios.post("http://0.0.0.0:3000/pages/tag",
      {
          tag: {
            name: name
          }
      },
      { withCredentials: true }
    ).then(response => {
      console.log("registration res", response)
    }).catch(error => {
      console.log("registration erro", error)
    })
    event.preventDefault()
  };
  return(
    <form onSubmit={ handleNameChange }>
      <label>
        Name:
        <input type="text" name="name" value={name} onChange={ event => setName(event.target.value)}/>
      </label>
      <input type="submit" value="Submit" />
    </form>
  )
}

function Checkbox(value){
  return(
    <input
      type = "checkbox"
      name = "post[tag_ids][]"
      value = {value.value}
      className = "non_box"
    />
  )
}

class TagName extends React.Component{
  render(){
    const tags = this.props.tag.map((tag) => <label className="tag_btn"><Checkbox value={tag.id} /><p>{tag.name}</p></label>)
    return(
      <React.Fragment>
        {tags}
        <ChangeTag/>
      </React.Fragment>
    )
  }
}

// function TagName(props) {
//     // const tags = this.props.tag.map((tag) => <input type="checkbox" value={tag.id} name="tag_id"/> {tag.name});
//     const check = this.props.tag.map((tag) => <Checkbox value = {tag.id}/> <></>{tag.name});
//     return (
//         <div>
//           {check}
//           <ChangeTag />
//         </div>
//     );
// }

export default TagName
