<div class="container">
    <center>
        <h4>Saklar</h4>
        <?php 
            if ($iot_out['value_data'] == "0") {
                echo '<button type="button ml-5" class="jarak btn btn-primary">Button On</button>';
            }elseif ($iot_out['value_data'] == "1") {
                echo '<button type="button ml-5" class="jarak btn btn-primary">Button Off</button>';
            }
        ?>
    </center>
</div>    
    
