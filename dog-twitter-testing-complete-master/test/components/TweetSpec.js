import Tweet from '../../src/components/Tweet';

describe('Tweet', () => {
  let wrapper;

  beforeEach(() => {
    wrapper = mount(
      <Tweet
        key={1}
        id={1}
        text="this is the best dog"
        name="Rory"
        userPhoto="fakephoto.com/dog"
        className="selected"
      />
    )
  });

  it('renders a div with the correct props', () => {
    expect(wrapper.find('div')).toBePresent();
    expect(wrapper.find('div')).toHaveProp('className', 'tweet-box selected')
  })

  it('renders an image tag with the correct props', () => {
    expect(wrapper.find('img')).toBePresent();
    expect(wrapper.find('img')).toHaveProp('src', 'fakephoto.com/dog')
  })

  it('renders a span tag with the dog name', () => {
    expect(wrapper.find('span')).toBePresent();
    expect(wrapper.find('span').text()).toMatch('Rory')
    // expect(wrapper.text()).toMatch('Rory') (alternate solution)
  })

  it('renders a p tag with the tweet text', () => {
    expect(wrapper.find('p')).toBePresent();
    expect(wrapper.find('p').text()).toMatch('this is the best dog')
    // expect(wrapper.text()).toMatch('this is the best dog') (alternate solution)
  })

})
