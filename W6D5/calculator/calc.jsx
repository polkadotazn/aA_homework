import React from 'react';

class Calculator extends React.Component {
  constructor(props) {
    super(props);
    this.state = {result: 0, num1: "", num2: ""};
    // your code here
  }

  setNum1() {
    this.state.num1 = document.getElementById('one').value;
  }

  setNum2() {
    this.state.num1 = document.getElementById('two').value;
  }

  // your code here

  render() {
  return (
    <div>
      <label>
        Num 1
        <input type="text" id="one" onChange={this.setNum1.bind(this)}>Calculate</input>
      </label>
      <label>
        Num 2
        <input type="text" id="two" onChange={this.setNum1.bind(this)}>Calculate</input>
      </label>
      <h1>{this.state.result}</h1>
    </div>
  );
}
}

export default Calculator;
