const activate = (oni) => {
   oni.input.unbind("<c-p>")
};


module.exports = {
   activate,
  //add custom config here, such as
  "oni.useDefaultConfig": false,
  "statusbar.enabled": false,
  "oni.hideMenu": true,
  "tabs.enabled": false,
  "tabs.showVimTabs": true,
  "editor.fontSize": "13px",
  "editor.fontFamily": "Source Code Pro",
}
