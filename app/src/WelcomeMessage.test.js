import React from 'react';
import { shallow } from 'enzyme';

// Components
import WelcomeMessage from './WelcomeMessage';

function setup() {
  const props = {
    imgPath: './database/Images/socks.jpg',
  };
  const wrapper = shallow(<WelcomeMessage />);
  return { wrapper, props };
}

describe('WelcomeMessage Test Suite', () => {
  it('Should have an image', () => {
    const { wrapper } = setup();
    expect(wrapper.find('img').exists()).toBe(true);
  });
});