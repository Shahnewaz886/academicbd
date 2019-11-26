@if($content_type_id ==1 || $content_type_id==3 || $content_type_id==5 )
    <div class="form-group">
        <label for="exampleFormControlFile1">File</label>
        <input type="file" name="content_file" class="form-control-file" id="exampleFormControlFile1">
    </div>
@elseif($content_type_id ==2)
    <div class="form-group">
        <label for="name">Youtube Link</label>
        <input type="text" name="file_location" value="" placeholder="Enter Youtube Link" id="name" class="form-control" required>
    </div>
@else
    <div class="form-group">
        <label for="exampleInputEmail1">Detail</label>
        <textarea name="file_content" cols="40" rows="12"  data-error-container="#editor1_error"  class="editor form-control" ></textarea>
    </div>
@endif

