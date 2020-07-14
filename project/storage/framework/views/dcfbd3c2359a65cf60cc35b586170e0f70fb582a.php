 

<?php $__env->startSection('content'); ?>
 <div class="content-area">
<div class="card card-info">
                <div class="card-header">
                    <div class="card-title">
                        <?php echo e($title); ?>

                    </div>
                    <div class="card-tools">
                        <a class="btn btn-warning" href="<?php echo e(URL::to('/admin/'.$ajax.'/create')); ?>">Add New</a>
                    </div>
                </div>
                <div class="card-body">
                        <div class="table-responsive">
                                <table class="table table-bordered data-table">
                                        <thead>
                                            <tr>
                                               <?php echo $thead; ?>

                                                <th width="100px">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                    </table>
                        </div>
                </div>
            </div>

</div>



<?php $__env->stopSection(); ?>


<?php $__env->startSection('scripts'); ?>
 <script type="text/javascript">
 
    deleteData=(id)=>{
      url=`<?php echo e(URL::to('/admin/'.$ajax.'/${id}')); ?>`;
        $('<form action="'+url+'" method="post">   <?php echo e(csrf_field()); ?><input type="hidden" name="_method" value="DELETE"></form>').appendTo('body').submit();
    }
    $(function () {
      
      var table = $('.data-table').DataTable({
          processing: true,
          serverSide: true,
          ajax: "<?php echo e($ajax); ?>",
          columns: [
              <?php echo $columns; ?>

              {data: 'action', name: 'action', orderable: false, searchable: false},
          ]
      });
      
    });
  </script>                       
  <?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.admin', array_except(get_defined_vars(), array('__data', '__path')))->render(); ?>