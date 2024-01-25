<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
    <head> 
		<meta name="viewport" content="width=device-width, initial-scale=1">


		<!-- Website CSS style -->
		<link href="css/bootstrap.min.css" rel="stylesheet">

		<!-- Website Font style -->
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
		<link rel="stylesheet" href="../css/register.css">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Passion+One' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet' type='text/css'>

		<title>Modifier</title>
	</head>
	<body>
		<?php
			// connexion à la bdd

			// VÉRIFIER si l'id de l'annimal est dans l'url

			// récupérer les annimaux dans bdd

            // traiter le formulaire
		?>

<section class="container">
        <article class="row main">
            <div class="main-login main-center">
                <h5>Modifier l'animal</h5>
                <form method="post" action="#">
                    <div class="form-group">
                        <label for="date_of_birth" class="cols-sm-2 control-label">Date de naissance</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="date_of_birth" id="date_of_birth" placeholder="Enter the date of birth" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="cols-sm-2 control-label">Nom</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="name" id="name" placeholder="Enter the name" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="weight" class="cols-sm-2 control-label">Poids</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-balance-scale" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="weight" id="weight" placeholder="Enter the weight" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="gender" class="cols-sm-2 control-label">Genre</label>
                        <div class="cols-sm-10">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-venus-mars" aria-hidden="true"></i></span>
                                <input type="text" class="form-control" name="gender" id="gender" placeholder="Enter the gender" />
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <a href="./animal.php" class="text-info">Retour à la liste d'animaux</a><br>
                        <input type="submit" name="submit" class="btn btn-info btn-md" value="Modifier">
                    </div>
                </form>
            </div>
        </article>
    </section>

		 <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
	</body>
</html>