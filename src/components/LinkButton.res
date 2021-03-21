open ReactMultiversal

@react.component
let make = (
  ~href,
  // ButtonContainer props
  ~textSize=?,
  ~accessibilityLabel=?,
  ~mode: option<ButtonContainer.mode>=?,
  ~round=?,
  ~horizontalSpace: option<SpacedView.size>=?,
  ~verticalSpace: option<SpacedView.size>=?,
  ~style=?,
  ~color=?,
  ~color2=?,
  ~activityIndicator=?,
  ~children,
  (),
) =>
  <ViewLink href>
    <ButtonContainer
      ?textSize
      ?accessibilityLabel
      ?mode
      ?round
      ?horizontalSpace
      ?verticalSpace
      ?style
      ?color
      ?color2
      ?activityIndicator>
      children
    </ButtonContainer>
  </ViewLink>
