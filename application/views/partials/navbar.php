<?php $home_active = $title == 'Albums'? 'class="active"': ''; ?>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="<?php echo base_url()?>">MyGallery</a>
    </div>
    <ul class="nav navbar-nav">
      <li <?=$home_active?> ><a href="<?php echo base_url()?>">Home</a></li>

    </ul>
    <ul class="nav navbar-nav navbar-right" style="padding-right: 20px;">    
      <a class="btn btn-info navbar-btn" href="<?php echo base_url().'album/create'?>">Add New Album</a>
      <a class="btn btn-info navbar-btn" style="background-color: maroon; color: white; border-color:maroon; margin-left:10px; " href="<?=base_url('albums/logout')?>">Sign Out</a>
    </ul>
  </div>
</nav>