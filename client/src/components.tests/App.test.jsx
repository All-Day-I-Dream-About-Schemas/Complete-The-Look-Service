import React from 'react';
import Enzyme, { shallow, mount} from 'enzyme';

// Components
import Adapter from 'enzyme-adapter-react-16';
import App from '../components/App.jsx';

Enzyme.configure({ adapter: new Adapter() });

describe('App component', () => {
  test('App renders', () => {
    const wrapper = shallow(<App />);
    expect(wrapper.exists()).toBe(true);
  });
});

// describe('App', () => {
//   it('Should have a title', () => {
//     const { wrapper } = shallow(<App />);
//     expect(wrapper.find(<Title />).exists()).toBe(true);
//   });
// });