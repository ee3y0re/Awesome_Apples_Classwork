//We will need to import createStore from redux
import { createStore } from "redux"; //need curly brackets because createStore is not a function

//Also import our reducer function from frontend/reducer.js
import reducer from './reducer'; //don't need curly brackets because reducer is a function

// Then, all we have to do is call createStore, passing in the reducer function.
const store = createStore(reducer);

export default store;

// test removing curly brackets from createStore and adding them to reducer instead