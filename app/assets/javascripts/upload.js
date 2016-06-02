// $(document).ready(function(){
//   var documentUploadForm = $('#new_document');
//   documentUploadForm.fileupload({
//     dataType: 'script',
//     add: function (e, data) {
//       types = /(\.|\/)(pdf|xls|xlsx|doc|docx|txt|gif|jpe?g|png|bmp)$/i;
//       file = data.files[0]
//       if (types.test(file.type) || types.test(file.name)) {
//         data.submit();
//         alert("This is a valid submission");
//       }
//       else { alert(file.name + " must be GIF, JPEG, BMP or PNG file"); }
//     }
//   });

//   documentUploadForm.on('fileuploadsubmit', function(e, data){
//     data.formData = {'document[name]': $('#document_name ').val()};
//   });
// });