open ReactNative
open ReactMultiversal

@react.component
let make = () =>
  <SpacedView>
    <Row>
      <SpacedView
        horizontal=XS
        vertical=XS
        key={Predefined.hairlineWidth->Js.Float.toString}
        style=// key=Predefined.hairlineWidth is to avoid SSR/hydrate issue

        {
          open Style
          style(
            ~borderStyle=#solid,
            ~borderWidth=Predefined.hairlineWidth,
            ~borderColor=Consts.Colors.lightGrey,
            ~borderRadius=20.,
            (),
          )
        }>
        <SVGLogo width={64.->Style.dp} height={64.->Style.dp} fill=Consts.Colors.dark />
      </SpacedView>
      <Spacer />
      <View>
        <TitlePre> {"This can be"->React.string} </TitlePre>
        <Title> {"Your App"->React.string} </Title>
        <Spacer size=XS />
        <Text
          style={
            open Style
            style(~fontSize=12., ~fontWeight=#_300, ~color="#ccc", ())
          }>
          {"MoOx, Inc."->React.string}
        </Text>
      </View>
      <SpacedView>
        <ViewLink href="/contact/">
          <ButtonContained round=true verticalSpace=XS color="#1F5EDC">
            <ButtonContained.Text> {"GET"->React.string} </ButtonContained.Text>
          </ButtonContained>
        </ViewLink>
      </SpacedView>
    </Row>
    <Spacer />
    <View>
      <Row.SpaceBetween>
        <Text
          style={
            open Style
            style(~fontSize=20., ~fontWeight=#_600, ~color="#999", ())
          }>
          {j`4.8 ⭑⭑⭑⭑⭑`->React.string}
        </Text>
        <Text
          style={
            open Style
            style(~fontSize=20., ~fontWeight=#_600, ~color="#999", ())
          }>
          {j`9k ♥`->React.string}
        </Text>
      </Row.SpaceBetween>
    </View>
    <Spacer />
    <Text
      style={
        open Style
        style(~fontSize=14., ~lineHeight=14. *. 1.5, ~fontWeight=#_300, ~color="#333", ())
      }>
      {j`You need an awesome native app? You got lucky, I can help you with that. I know how to build fast & beautiful mobile apps with React Native that works perfectly on iOS, Android & even more platform. We can target the web, Windows, macOS... Just get in touch, I am available to listen to your needs!`->React.string}
    </Text>
    <Spacer size=L />
    <ViewLink href="https://www.linkedin.com/in/maxthirouin/">
      <Title> {"Testimonials"->React.string} </Title>
      <Spacer />
      <SpacedView
        style={
          open Style
          style(~backgroundColor="#eee", ~borderRadius=10., ())
        }>
        <Text> {"David"->React.string} </Text>
        <Text
          style={
            open Style
            style(~fontSize=20., ~fontWeight=#_600, ~color="orange", ())
          }>
          {j`⭑⭑⭑⭑⭑`->React.string}
        </Text>
        <Text
          style={
            open Style
            style(~fontSize=14., ~color="#333", ())
          }>
          {"Having collaborated with Maxime on several open source projects, I can attest that he is a knowledgeable and motivated frontend developer. Not only does he stay up-to-date with the latest tools and best practices: he actively contributes to them... "->React.string}
          <Text
            style={
              open Style
              style(~color=Predefined.Colors.Ios.light.blue, ())
            }>
            {"Read more"->React.string}
          </Text>
        </Text>
      </SpacedView>
    </ViewLink>
    <Spacer />
    <TitlePre> {"A joke just for you"->React.string} </TitlePre>
    <Title> {"Fun story"->React.string} </Title>
    <Spacer />
    <Text
      style={
        open Style
        style(~fontSize=14., ~lineHeight=14. *. 1.5, ~fontWeight=#_300, ~color="#333", ())
      }>
      {j`Helvetica and Times New Roman walk into a bar.\\nThe bartender says "Get out, we don't serve your type!"`->React.string}
    </Text>
  </SpacedView>
