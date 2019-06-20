function formatTable()
{
    var sheet = SpreadsheetApp.getActiveSheet();
var headers = sheet.getRange("A1:C1");
    var table = sheet.getDataRange();
headers.setBackground("indigo");
    headers.setFontColor("white");
    headers.setFontWeight("bold");
table.setHorizontalAlignment("center");
    table.setBorder(true, true, true, true, false, true, "LightGray", SpreadsheetApp.BorderStyle.SOLID);
table.createFilter();
    
    
}
function onOpen()
{
    var ui = SpreadsheetApp.getUi();
    ui.createMenu('Spreadsheet Magic')
    .addItem('Format Table', 'formatTable')
    .addToUi();
    
}