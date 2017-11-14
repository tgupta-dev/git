<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-ordprdimg" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-ordprdimg" class="form-horizontal">
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="ordprdimg_status" id="input-status" class="form-control">
                <?php if ($ordprdimg_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
		  
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_image_size; ?></label>
            <div class="col-sm-10">
				<input type="text" style="width:40%" name="ordprdimg_img_w" placeholder="Width" value="<?php echo $ordprdimg_img_w;?>" id="input-ordprdimg_img_w" class="form-control col-sm-5" /> <span class="col-sm-1" style="width:10%;text-align:center;font-weight:bold">X</span> <input style="width:40%" type="text" name="ordprdimg_img_h" value="<?php echo $ordprdimg_img_h;?>" id="input-ordprdimg_img_h" class="form-control" placeholder="Height"/>
             </div>
          </div>
		  
		  <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_image_col_name; ?></label>
            <div class="col-sm-10">
				<?php foreach ($languages as $language) {  ?>
					<div class="input-group pull-left"><span class="input-group-addon"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> </span><input type="text" name="ordprdimg_image_col_name[<?php echo $language['language_id'];?>]" value="<?php echo $ordprdimg_image_col_name[$language['language_id']]; ?>" placeholder="<?php echo $entry_image_col_name; ?>" class="form-control" />
					</div>
				<?php } ?>
             </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>