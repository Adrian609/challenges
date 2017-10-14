import Tweet from '../../src/components/Tweet';

describe('Tweet', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <Tweet
        key={1}
        id={1}
        text="this is the best dog"
        name="Wishbone"
        userPhoto="fakephoto.com/dog"
        className='selected'
      />
    )
  })

  // renders the HTML tags we expect (pulled from index.html)
  it('should render the html tags we expect', () => {
    expect(wrapper.find('div')).toBePresent(); // first make sure it is present
    expect(wrapper.find('div')).toHaveProp('className', 'tweet-box selected')
  });

  it('renders an img with the correct props', () => {
    expect(wrapper.find('img')).toBePresent();
    expect(wrapper.find('img')).toHaveProp('src', 'fakephoto.com/dog')
  });

  it('renders a span tag with the dog name', () => {
    expect(wrapper.find('span')).toBePresent();
    expect(wrapper.find('span').text()).toEqual('Wishbone'); // .text() converts this to text?
  })

  it('renders a p tag with the dog name', () => {
    expect(wrapper.find('p')).toBePresent();
    expect(wrapper.find('p').text()).toEqual('this is the best dog'); // .text() converts this to text?
  })

})
