<?php echo $header; ?><?php echo $content_top; ?>

<!-- Content -->
<div class="container">
	<div class="row">
		<?php if (trim($column_left)): ?>
			<div class="col-lg-3 col-md-4 col-sm-4 hidden-xs">
				<?php echo $column_left; ?>
			</div>
			<div class="col-lg-9 col-md-8 col-sm-8 the-content account-page">
		<?php elseif (trim($column_right)): ?>
			<div class="col-lg-9 col-md-8 col-sm-8 the-content account-page">
		<?php else: ?>
			<div class="col-lg-12 the-content account-page">
		<?php endif ?>

			<!-- Breadcrumbs -->
			<div class="breadcrumb">
				<?php foreach ($breadcrumbs as $key => $breadcrumb) { ?>
					<?php if ($key == count($breadcrumbs) - 1): ?>
						<li><?php echo $breadcrumb['text']; ?></li>
					<?php else: ?>
						<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
					<?php endif ?>
				<?php } ?>
			</div>

			<!-- Title -->
			<h1><?php echo $heading_title; ?></h1>

			<!-- Content -->
			<?php echo $text_message; ?>

			<div class="buttons">
				<div class="right">
					<a href="<?php echo $continue; ?>" class="btn btn-basket"><?php echo $button_continue; ?></a>
				</div>
			</div>
		</div>
		<?php if (trim($column_right) AND ! trim($column_left)): ?>
			<div class="col-lg-3 col-md-4 col-sm-4 hidden-xs">
				<?php echo $column_right; ?>
			</div>
		<?php endif ?>
	</div>
</div>

<?php echo $content_bottom; ?><?php echo $footer; ?>