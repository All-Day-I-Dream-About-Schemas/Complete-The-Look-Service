import React from 'react';
import styled from 'styled-components';

const TitleCSS = styled.h5`
  font-family: AdineuePRO,Helvetica,Arial,sans-serif;
  font-style: normal;
  font-weight: 600;
  margin-bottom: 20px;
  text-transform: uppercase;
`;

const Wrapper = styled.div`
  font-family: AdineuePRO,Helvetica,Arial,sans-serif;
`;

const Title = () => (
  <Wrapper>
    <TitleCSS>
      COMPLETE THE LOOK
    </TitleCSS>
  </Wrapper>
);

export default Title;

