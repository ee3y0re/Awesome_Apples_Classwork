const selectLocation = (city, jobs) => {
  return {
    type: "SWITCH_LOCATION", //i wonder what switch_location does
    city, //must match city argument and starts off with no value because that comes from api call
    jobs, //must match jobs argument and starts off with no value because that comes from api call
  };
};

export default selectLocation;

// Set it temporarily on the window(window.selectLocation = selectLocation) and 
// make sure it's working properly in the console before moving on.

let test = window.selectLocation