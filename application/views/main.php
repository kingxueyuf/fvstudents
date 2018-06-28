<html>
<head>

<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>


<link href="/css/main.css" rel="stylesheet">
</head>

<body>
<div class="container">

    <ul class="nav nav-tabs">
      <li role="presentation" class="active"><a href="#">Home</a></li>
    </ul>


    
    <!-- Timeline -->
    <div class="timeline">
    
        <!-- Line component -->
        <div class="line text-muted"></div>

        <?php foreach ($kid_activity as $kid_activity_item): ?>
            <!-- Panel -->
            <article class="panel panel-danger panel-outline">
        
                <!-- Icon -->
                <div class="panel-heading icon">
                    <i class="glyphicon glyphicon-heart"></i>
                </div>
                
                <!-- Body -->
                <div class="panel-body">

                    <i class="glyphicon glyphicon-time">
                        <?php echo $kid_activity_item['activity_date']; ?>
                    </i>

                    <h6>
                        <span class="label label-success">
                            Teacher <?php echo $kid_activity_item['teacher_name']; ?>
                        </span>
                        <?php echo $kid_activity_item['teacher_comment']; ?>
                    </h6>

                    <?php 
                        if($kid_activity_item['picture_1_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_1_path'].'"/>';
                        }
                        if($kid_activity_item['picture_2_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_2_path'].'"/>';
                        }
                        if($kid_activity_item['picture_3_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_3_path'].'"/>';
                        }
                        if($kid_activity_item['picture_4_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_4_path'].'"/>';
                        }
                        if($kid_activity_item['picture_5_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_5_path'].'"/>';
                        }
                        if($kid_activity_item['picture_6_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_6_path'].'"/>';
                        }
                        if($kid_activity_item['picture_7_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_7_path'].'"/>';
                        }
                        if($kid_activity_item['picture_8_path'] != "") {
                            echo '<img src="/fvstudents/pic/'.$kid_activity_item['picture_8_path'].'"/>';
                        }
                    ?>

    <!--                 <?php 
                        foreach($kid_activity_item['kid_activity_comment'] as $kid_activity_comment_item){
                            echo '<h6><span class="label label-info">Parent '.$kid_activity_comment_item['comment_by_name'].'</span>'.$kid_activity_comment_item['comment'].'</h6>';
                        }
                    ?> -->
                    
                    <!-- <h6><span class="label label-info">Parent Yufan</span> "you post more pictures like this? Thanks!"</h6> -->
    <!--                 <textarea class="form-control" rows="3" placeholder="leave your message"></textarea>
                    <input class="btn btn-default" type="submit" value="Submit"> -->
                </div>
            <!-- /Body -->
            </article>
        <?php endforeach; ?>
        

        <!-- /Panel -->

        <!-- Separator -->
        <div class="separator text-muted">
            <time>25. 3. 2015</time>
        </div>
        <!-- /Separator -->
            
        <!-- Panel -->
        <article class="panel panel-info panel-outline">
    
            <!-- Icon -->
            <div class="panel-heading icon">
                <i class="glyphicon glyphicon-info-sign"></i>
            </div>
            <!-- /Icon -->
    
            <!-- Body -->
            <div class="panel-body">
                That is all.
            </div>
            <!-- /Body -->
    
        </article>
        <!-- /Panel -->
    
    </div>
    <!-- /Timeline -->

</div>
</div>
</body>
</html>