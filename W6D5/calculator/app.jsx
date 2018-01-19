import React from 'react';
import ReactDOM from 'react-dom';

import Calculator from './calc';

document.addEventListener('DOMContentLoaded', function () {
  ReactDOM.render(<Calculator />, document.getElementById('main'));
});
