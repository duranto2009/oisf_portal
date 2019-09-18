function showModal(id,url) {
    bootbox.confirm({
        message: '<p class="text-center">Do you want to delete</p>',
        title: "Custom title",
        size:"small",
        buttons: {
            confirm: {
                label: 'Yes',
                className: 'btn-success'
            },
            cancel: {
                label: 'No',
                className: 'btn-danger'
            }
        },
        callback: function (result) {

            if(result == true){
                var data;
                $.ajax({
                    type:"POST",
                    url : url,
                    data : {
                        id: id
                    },
                    async: false,
                    success : function(response) {
                        data = response;
                        $('.modal.in .modal-dialog').hide();
                        $(".modal.in .modal-dialog .btn").off("click");
                       reload();
                    },
                    error: function() {
                        alert('Error occured');
                    }
                });

            }else{
                $('.modal.in .modal-dialog').hide();
                $(".modal.in .modal-dialog .btn").off("click");
            }

        }
    });

}