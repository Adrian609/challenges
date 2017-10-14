import React from 'react';

const PopUpAd = props => {
  let handleExit = () => {
    confirm("Are you sure you don't want these dope tix to see " + props.artist + '?');
  }
  return(
    <div>
      <div>
        <h2>Congrats! You have won tickets to see {props.artist}!</h2>
        <h3>Please enter your email address to receive tickets:</h3 >
      </div>

      <div id='button' onClick = {handleExit}>
        <i class="fa fa-times" aria-hidden="true"></i>
      </div>

      <div>
        <form>
          <label htmlFor='email'>Email:</label>
          <input type='text' id='email' />
          <input type='submit' />
        </form>
      </div>
    </div>
  );
};

export default PopUpAd;
