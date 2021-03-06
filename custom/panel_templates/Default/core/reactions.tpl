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
                        <h1 class="m-0 text-dark">{$REACTIONS}</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{$PANEL_INDEX}">{$DASHBOARD}</a></li>
                            <li class="breadcrumb-item active">{$CONFIGURATION}</li>
                            <li class="breadcrumb-item active">{$REACTIONS}</li>
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
                        <a href="{$NEW_REACTION_LINK}" class="btn btn-primary">{$NEW_REACTION}</a>
                        <hr />

                        {include file='includes/success.tpl'}

                        {include file='includes/errors.tpl'}

                        {if count($REACTIONS_LIST)}
                            <div class="table-responsive">
                                <table class="table table-borderless table-striped">
                                    <thead>
                                    <tr>
                                        <td>{$NAME}</td>
                                        <td>{$ICON}</td>
                                        <td>{$TYPE}</td>
                                        <td>{$ENABLED}</td>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    {foreach from=$REACTIONS_LIST item=reaction}
                                        <tr>
                                            <td><a href="{$reaction.edit_link}">{$reaction.name}</a></td>
                                            <td>{$reaction.html}</td>
                                            <td>{$reaction.type}</td>
                                            <td>{if $reaction.enabled eq 1}<i class="fa fa-check-circle fa-fw text-success"></i>{else}<i class="fa fa-times-circle fa-fw text-danger"></i>{/if}</td>
                                        </tr>
                                    {/foreach}
                                    </tbody>
                                </table>
                            </div>
                        {else}
                            {$NO_REACTIONS}
                        {/if}

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