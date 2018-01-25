import React from 'react';
import { Route, Link, NavLink } from 'react-router-dom';
import Orange from './orange';
import Yellow from './yellow';

class Red extends React.Component {
  render() {
    return(
      <div>
        <h2 className="red">red page</h2>
        {/* Links here */}
        <NavLink exact to='/red'>Back to Red</NavLink>
        <Link to='/red/yellow'>Add Yellow</Link>
        <Link to='/red/orange'>Add Orange</Link>





         <Route path="/red/yellow" component={Yellow} />
         <Route path="/red/orange" component={Orange} />
      </div>
    );
  }
}

export default Red;
