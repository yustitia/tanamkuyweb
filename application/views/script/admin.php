<script type="text/javascript">
    $(document).ready(function() {
        setInterval(function() {
            $.getJSON('<?= base_url('api/admin'); ?>', function(result) {
                $.each(result, function(key, value) {
                    $('#ajax_' + key).html(value);
                });
            });
        }, 1000);
    });
</script>