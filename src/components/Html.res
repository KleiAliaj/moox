open ReactNative
open ReactMultiversal

// react-native-web
@module("react-native")
external createWebElementFromString: (string, 'props) => React.element = "unstable_createElement"

let lightGrey = Predefined.Colors.lightGrey
let blue = Predefined.Colors.Ios.light.blue
let purple = Predefined.Colors.Ios.light.purple

let styles = {
  open Style
  StyleSheet.create({
    "aText": textStyle(~color=blue, ~textDecorationLine=#underline, ()),
    "h1": viewStyle(~marginTop=42.->dp, ~marginBottom=24.->dp, ()),
    "h1Text": textStyle(~fontSize=42., ~fontWeight=#_800, ()),
    "h2": viewStyle(~marginTop=34.->dp, ~marginBottom=18.->dp, ()),
    "h2Text": textStyle(~fontSize=34., ~fontWeight=#_800, ()),
    "h3": viewStyle(~marginTop=26.->dp, ~marginBottom=13.->dp, ()),
    "h3Text": textStyle(~fontSize=26., ~fontWeight=#_800, ()),
    "h4": viewStyle(~marginTop=24.->dp, ~marginBottom=12.->dp, ()),
    "h4Text": textStyle(~fontSize=24., ~fontWeight=#_700, ()),
    "h5": viewStyle(~marginTop=22.->dp, ~marginBottom=11.->dp, ()),
    "h5Text": textStyle(~fontSize=22., ~fontWeight=#_700, ()),
    "h6": viewStyle(~marginTop=22.->dp, ~marginBottom=11.->dp, ()),
    "h6Text": textStyle(~fontSize=22., ~fontWeight=#_700, ()),
    "p": viewStyle(~marginBottom=20.->dp, ()),
    "text": textStyle(~fontSize=18., ~lineHeight=18. *. 1.65, ~fontWeight=#_300, ()),
    // "image": imageStyle(~maxWidth=100.->pct, ()),
    "ul": viewStyle(~marginBottom=29.->dp, ()),
    "li": textStyle(),
    "liWrapper": viewStyle(~flexDirection=#row, ()),
    "liBullet": textStyle(~paddingHorizontal=10.->dp, ~alignSelf=#flexStart, ()),
    "blockQuote": viewStyle(
      ~paddingTop=29.->dp,
      ~paddingHorizontal=20.->dp,
      ~marginBottom=29.->dp,
      ~borderLeftColor="#9ca0a3",
      ~borderLeftWidth=3.,
      (),
    ),
    "blockQuoteText": textStyle(
      ~fontSize=24.,
      ~lineHeight=32.,
      ~fontWeight=#_300,
      ~color="#515355",
      (),
    ),
    "pre": viewStyle(~marginTop=0.->dp, ~marginBottom=20.->dp, ()),
    "codeBlock": viewStyle(), // ~backgroundColor=lightGrey,
    // ~boxShadow=0 0 0 2px lightGrey;
    // ~borderRadius=2.;
    "codeText": textStyle(
      ~backgroundColor=lightGrey,
      ~paddingHorizontal=4.->dp,
      ~borderRadius=2.,
      // ~boxShadow=0 0 0 2px lightGrey;
      (),
    ),
    "hr": viewStyle(
      ~marginVertical=40.->dp,
      ~marginHorizontal=20.->dp,
      ~height=4.->dp,
      ~backgroundColor="#eee",
      (),
    ),
  })
}

module A = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~children) =>
    <TextLink
      href={props["href"]}
      style={
        open Style
        arrayOption([Some(styles["aText"]), styl])
      }>
      children
    </TextLink>
}

module H1 = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["h1"]), styl])
      }>
      <h1 id={props["id"]}>
        <Text
          style={
            open Style
            arrayOption([Some(styles["h1Text"]), textStyl])
          }>
          children
        </Text>
      </h1>
    </View>
}

module H2 = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["h2"]), styl])
      }>
      <h2 id={props["id"]}>
        <Text
          style={
            open Style
            arrayOption([Some(styles["h2Text"]), textStyl])
          }>
          children
        </Text>
      </h2>
    </View>
}

module H3 = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["h3"]), styl])
      }>
      <h3 id={props["id"]}>
        <Text
          style={
            open Style
            arrayOption([Some(styles["h3Text"]), textStyl])
          }>
          children
        </Text>
      </h3>
    </View>
}

module H4 = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["h4"]), styl])
      }>
      <h4 id={props["id"]}>
        <Text
          style={
            open Style
            arrayOption([Some(styles["h4Text"]), textStyl])
          }>
          children
        </Text>
      </h4>
    </View>
}

module H5 = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["h5"]), styl])
      }>
      <h5 id={props["id"]}>
        <Text
          style={
            open Style
            arrayOption([Some(styles["h5Text"]), textStyl])
          }>
          children
        </Text>
      </h5>
    </View>
}

module H6 = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["h6"]), styl])
      }>
      <h6 id={props["id"]}>
        <Text
          style={
            open Style
            arrayOption([Some(styles["h6Text"]), textStyl])
          }>
          children
        </Text>
      </h6>
    </View>
}

module P = {
  @react.component
  let make = (~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["p"]), styl])
      }>
      <Text
        style={
          open Style
          arrayOption([Some(styles["text"]), textStyl])
        }>
        <p> children </p>
      </Text>
    </View>
}

module TextNode = {
  @react.component
  let make = (~style as styl=?, ~children) =>
    <Text
      style={
        open Style
        arrayOption([Some(styles["text"]), styl])
      }>
      children
    </Text>
}

module Image = {
  @react.component
  let make = (~props=Js.Obj.empty()) =>
    Platform.os === Platform.web
      ? createWebElementFromString(
          "img",
          {
            // "style": Style.(arrayOption([|Some(styles##image), styl|])),
            "src": props["src"],
            "className": props["className"],
          },
        )
      : <ImageFromUri
        // style=Style.(arrayOption([|Some(styles##image), styl|]))
          uri={props["src"]}
        />
}

module Ul = {
  @react.component
  let make = (~style as styl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["ul"]), styl])
      }>
      children
    </View>
}

module Li = {
  @react.component
  let make = (~style as styl=?, ~bullet=j`•`, ~children) =>
    <View style={styles["liWrapper"]}>
      <Text style={Style.array([styles["text"], styles["liBullet"]])}>
        {bullet->React.string}
      </Text>
      <Text
        style={
          open Style
          arrayOption([Some(styles["li"]), Some(styles["text"]), styl])
        }>
        <p> children </p>
      </Text>
    </View>
}

module BlockQuote = {
  @react.component
  let make = (~style as styl=?, ~textStyle as textStyl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["blockQuote"]), styl])
      }>
      <Text
        style={
          open Style
          arrayOption([Some(styles["blockQuoteText"]), textStyl])
        }>
        <blockquote> children </blockquote>
      </Text>
    </View>
}

module Pre = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["pre"]), styl])
      }>
      {React.createElementVariadic(ReactDOM.stringToComponent("pre"), props->Obj.magic, [children])}
    </View>
}

module CodeBlock = {
  @react.component
  let make = (~props=Js.Obj.empty(), ~style as styl=?, ~children) =>
    <View
      style={
        open Style
        arrayOption([Some(styles["codeBlock"]), styl])
      }>
      {React.createElementVariadic(
        ReactDOM.stringToComponent("code"),
        props->Obj.magic,
        [children],
      )}
    </View>
}

module Code = {
  @react.component
  let make = (~style as styl=?, ~children) =>
    <Text
      style={
        open Style
        arrayOption([Some(styles["codeText"]), styl])
      }>
      {React.createElementVariadic(
        ReactDOM.stringToComponent("code"),
        ReactDOM.domProps(),
        [children],
      )}
    </Text>
}

module Br = {
  /* Platform.OS */
  /* let make = _children => {...component, render: _self => <View />}; */
  @react.component
  let make = () => <Text> {"\n"->React.string} </Text>
}

module Hr = {
  @react.component
  let make = () => <View style={styles["hr"]} />
}
