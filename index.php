<?php include_once "/classes/shout.php";
$shout = new Shout();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Shout Box</title>
    <!--<link rel="stylesheet" href="css/bootstrap.min.css">-->
    <link rel="stylesheet" href="css/style.css">
    <!--<link rel="stylesheet" href="js/bootstrap.min.js">-->
</head>
<body>
<div class="wrapper clr">
    <header class="headerSection clr">
        <h2>Shout here with Faisal</h2>
    </header>
    <section class="content clr">
        <div class="box">
            <ul>
                <?php
                $getData = $shout->getAllData();
                if($getData)
                {
                    while($data = $getData->fetch_assoc())
                    { ?>
                        <li><span><?php echo $data['time']; ?></span> - <b style="font-family: Verdana;
                            font-style: italic; color: #005BCC;"><?php echo $data['name']; ?> : </b>
                            <?php echo $data['body']; ?>
                        </li>
                    <?php
                    }
                }
                ?>

            </ul>
        </div>


        <?php
        //ekhane name ar message er data gulake dhore then db te insert kore then ul li te show korabo
            if($_SERVER['REQUEST_METHOD'] == "POST")
            {
                $shoutdata = $shout->insertData($_POST);
                //post method die form e data gulake dhorci. tai $_POST er vitor sob data
                //store hoice .. tai etake send kore dilam..
            }
        ?>


        <div class="shoutform clr">
            <form action="" method="post">
                <table>
                    <tr>
                        <td class="tdStyle">Name</td>
                        <td class="tdStyle2"> :</td>
                        <td>
                            <input type="text" name="name" required
                                   id="name" placeholder="please enter your name">
                        </td>
                    </tr>
                    <tr>
                        <td class="tdStyle"> Message</td>
                        <td class="tdStyle2"> :</td>
                        <td>
                            <input type="text" name="body" required
                                   id="message" placeholder="please enter your message">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td></td>
                        <td>
                            <input type="submit" name="submit"
                                   id="submit" value="Shout it">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </section>
    <footer class="footerSection clr">
        <h2>&copy; www.faisalshoutbox.com</h2>
    </footer>
</div>
</body>
</html>