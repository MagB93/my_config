const activate = (Oni) => {
   console.log("config activated")
}

const deactivate = () => {
   console.log("config deactivated")
}

module.exports = {
   activate,
   deactivate,
  //add custom config here, such as
  "oni.useDefaultConfig": false,
  //"oni.bookmarks": ["~/Documents",]
  "statusbar.enabled": false,
  "oni.hideMenu": true,
  "tabs.showVimTabs": true,
  "editor.fontSize": "13px",
  "editor.fontFamily": "Source Code Pro"
}
