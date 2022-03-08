const initialState = {
  city: "Please Select", 
  jobs: []
};

const reducer = (state = initialState, action) => {
  // return state; // remove this and fill out the body of the reducer function
  // Now let's build it out by adding a switch statement.
  // What we want to do is see if the action.type matches something we expect 
  // (e.g. "SWITCH_LOCATION") and return an updated version of the state 
  // accordingly. Add a case statement to check for this action type. It should 
  // return a new object with the correct properties. We can grab those off the action (i.e. action.jobs and action.city).
  switch(action.type) {
    // case action.type === "SWITCH_LOCATION":
    //   //no dispatch or get state involved
    //   break; //also no need for return
    case "SWITCH_LOCATION":
      return {
        city: action.city,
        jobs: action.jobs
      };
    default:
      return state;
  }
};

export default reducer;


//i'm still very confused