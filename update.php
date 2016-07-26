<?php
require_once 'core/init.php';

$user = new User();

if(!$user->isLoggedIn()) {
    Redirect::to('applicantspage.php');
}

if(Input::exists()) {
    if(Token::check(Input::get('token'))) {
        
        $validate = new Validate();
        $validation = $validate->check($_POST, array(
            'firstname' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            ),
            'lastname' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            ),
            'Age' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            ),
            'Gender' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            ),
            'birthday' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            ),
            'ContactNumber' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            ),
            'JobApplying' => array(
                'required' => true,
                'min' => 2,
                'max' => 50
            )
        ));

        if($validation->passed()) {
            
            try {
                $user->update(array(
                    'firstname' => Input::get('firstname'),
                    'lastname' => Input::get('lastname'),
                    'Age' => Input::get('Age'),
                    'Gender' => Input::get('Gender'),
                    'birthday' => Input::get('birthday'),
                    'CivilStatus' => Input::get('CivilStatus'),
                    'Education' => Input::get('Education'),
                    'Course' => Input::get('Course'),
                    'Email' => Input::get('Email'),
                    'ContactNumber' => Input::get('ContactNumber'),
                    'JobApplying' => Input::get('JobApplying'),
                    'Position' => Input::get('Position'),	
                ));

                Session::flash('home', 'Your details have been updated.');
                Redirect::to('applicantspage.php');

            } catch(Exception $e) {
                die($e->getMessage());
            }

        } else {
        	foreach($validation->errors() as $error) {
                echo $error, '<br>';
        	}
        }

    }
}

?>

<form action="" method="post">
	<div class="field">
		<label for="firstname">Firstname (Unang Pangalan):</label>
		<input type="text" name="firstname" value="<?php echo escape($user->data()->firstname); ?>">

    <div class="field">
        <label for="lastname">Lastname (Apelyido):</label>
        <input type="text" name="lastname" value="<?php echo escape($user->data()->lastname); ?>">

    <div class="field">
        <label for="Age">Age (Ang iyong Edad):</label>
        <input type="text" name="Age" value="<?php echo escape($user->data()->Age); ?>">

    <div class="field">
        <label for="name">Gender (Kasarian):</label>
        <input type="text" name="Gender" value="<?php echo escape($user->data()->Gender); ?>">

    <div class="field">
        <label for="name">Birthday (Ang iyong Kaarawan):</label>
        <input type="text" name="birthday" value="<?php echo escape($user->data()->birthday); ?>">

    <div class="field">
        <label for="name">CivilStatus</label>
        <input type="text" name="CivilStatus" value="<?php echo escape($user->data()->CivilStatus); ?>">

    <div class="field">
        <label for="name">Education (Edukasyon):</label>
        <input type="text" name="Education" value="<?php echo escape($user->data()->Education); ?>">

    <div class="field">
        <label for="name">Course (Ang iyong Kurso):</label>
        <input type="text" name="Course" value="<?php echo escape($user->data()->Course); ?>">

    <div class="field">
        <label for="name">Email</label>
        <input type="text" name="Email" value="<?php echo escape($user->data()->Email); ?>">

    <div class="field">
        <label for="name">ContactNumber (Ang iyong KontactNumber)</label>
        <input type="text" name="ContactNumber" value="<?php echo escape($user->data()->ContactNumber); ?>">

    <div class="field">
        <label for="name">JobApplying (Inaaplyang Trabaho):</label>
        <input type="text" name="JobApplying" value="<?php echo escape($user->data()->JobApplying); ?>">

    <div class="field">
        <label for="name">Position</label>
        <input type="text" name="Position" value="<?php echo escape($user->data()->Position); ?>">

		<input type="submit" value="Update">
		<input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
	</div>
</form>