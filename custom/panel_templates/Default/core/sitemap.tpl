{include file='header.tpl'}
<body class="hold-transition sidebar-mini">
<div class="wrapper">
    {include file='navbar.tpl'}
    {include file='sidebar.tpl'}

    <div class="content-wrapper">
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">{$SITEMAP}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                            <li class="breadcrumb-item active">{$LAYOUT}</li>
                            <li class="breadcrumb-item active">{$SITEMAP}</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                {include file='includes/update.tpl'}

                <div class="card">
                    <div class="card-body">

                        {include file='includes/success.tpl'}

                        {include file='includes/errors.tpl'}

                        {if isset($SITEMAP_LAST_GENERATED)}
                            <div class="callout callout-info">
                                <p>{$SITEMAP_LAST_GENERATED}</p>
                                <p>{$LINK}<br /><code>{$SITEMAP_FULL_LINK}</code></p>
                                <p><a href="{$SITEMAP_LINK}" class="btn btn-primary" download style="color:#fff;text-decoration:none">{$DOWNLOAD_SITEMAP}</a></p>
                            </div>
                        {else}
                            <div class="callout callout-danger">
                                <p>{$SITEMAP_NOT_GENERATED}</p>
                            </div>
                        {/if}

                        <form action="" method="post">
                            <input type="hidden" name="token" value="{$TOKEN}">
                            <input type="submit" class="btn btn-primary" value="{$GENERATE}">
                        </form>

                    </div>
                </div>

                <!-- Spacing -->
                <div style="height:1rem;"></div>

            </div>
        </section>
    </div>

    {include file='footer.tpl'}

</div>
<!-- ./wrapper -->

{include file='scripts.tpl'}

</body>
</html>