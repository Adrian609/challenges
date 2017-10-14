import React from 'react';


const Tweet = (props) => {
  return(
    <div className='tweet'>
      <div className='profile-picture'>
        <img src={props.profile_image_url}/>
      </div>

      <h3 className='user-date-info'>
        <div className='user-name'>
          {props.username}
        </div>
        {props.screen_name}
        {props.timestamp_ms}
      </h3>

      <p className='tweet-text'>
        {props.text}
      </p>

      <div className='action-icons'>
        <i className="fa fa-reply" aria-hidden="true"/>
        <i className="fa fa-heart" aria-hidden="true"/>
        <i className="fa fa-ellipsis-h" aria-hidden="true"/>
        <i className="fa fa-retweet" aria-hidden="true"/>
        {props.retweet_count}
        {props.favorite_count}
        {/* {props.entities} */}
        {props.favorited}
        {props.retweeted}
      </div>
    </div>
  )
}

export default Tweet;
