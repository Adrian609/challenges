import TwitterFeed from '../../src/containers/TwitterFeed';
import Tweet from '../../src/components/Tweet';

describe('TwitterFeed', () => {
  let wrapper;
  let data = [{
    id: 1,
    text: "This doesn't look like Kansas",
    user: {
       name: 'Todo',
       profile_image_url: 'http://images2.fanpop.com/image/quiz/400000/400752_1271413686448_431_300.jpg'
    }
  }]

  beforeEach(() => {
    wrapper = mount(
      <TwitterFeed
        data={data}
      />
    )
  });

  //YOUR TEST CODE HERE
  it('should return true', () => {
    expect(true).toEqual(true);
  })

  it('should initially mount selectedTweetId to null', () => {
    expect(wrapper.state()).toEqual({ selectedTweetId: null });
  });

  it('should render a tweet component', () => {
    expect(wrapper.find(Tweet)).toBePresent();
  });

  // it('should pass down different props to Tweet if we setState to null', () => {
  //   expect(wrapper.find(Tweet)).not.toHaveProp('className', 'selected')
  // });

  it('should pass down different props to Tweet if we setState to null', () => {
    wrapper.setState({ selectedTweetId: null });
    expect(wrapper.find(Tweet)).toHaveProp('selected');
    //expect(wrapper.state({ selectedTweetId: 1 }).toEqual(wrapper.props({ tweetId: 1 })))
  });

})
