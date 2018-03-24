import 'datatables.net-bs'
var dtable = $("table[data-behavior='tabledatesort']").DataTable({
  "pageLength": 25, 
  "saveState": true,
  "columnDefs": [
      {
        "targets": [3, 4],
        "visible": false,
        //"searchable: false,
      }
  ]
});
export default dtable;
