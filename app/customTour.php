<?php $this->layout('template') ?>
<section class="mt-5 py-4">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-body">
                        <form id="custom-tour" action="#" style="display: none;">
                            <h3>Halaman 1</h3>
                            <fieldset>
                                <legend>Account Information</legend>

                                <label for="userName-2">Berapa Hari Anda Liburan ke Jogja ? *</label>
                                <select name="hari_liburan" class="required form-control" id="hari_liburan">
                                    <option value="1 Hari">1 Hari</option>
                                    <option value="2 Hari 1 Malam">2 Hari 1 Malam</option>
                                    <option value="3 Hari 2 Malam">3 Hari 2 Malam</option>
                                    <option value="4 Hari 3 Malam">4 Hari 3 Malam</option>
                                    <option value="5 Hari 4 Malam">5 Hari 4 Malam</option>
                                    <option value="Honeymoon">Honeymoon</option>
                                </select>
                                <label for="jml_orang">Berapa Orang Yang Akan Ikut Liburan ? *</label>
                                <input id="jml_orang" name="jml_orang" type="number" class="required form-control">
                                <label for="confirm-2">Kapan Rencana Akan Berlibur ? *</label>
                                <input id="confirm-2" name="confirm" type="text" class="required form-control">
                                <label for="password-2">Pilihan Armada *</label>
                                <input id="password-2" name="password" type="text" class="required form-control">
                                <p class="mt-2"> <span class="text-danger">(*)</span> Wajib diisi</p>
                            </fieldset>

                            <h3>Halaman 2</h3>
                            <fieldset>
                                <legend>Profile Information</legend>

                                <label for="name-2">First name *</label>
                                <input id="name-2" name="name" type="text" class="required">
                                <label for="surname-2">Last name *</label>
                                <input id="surname-2" name="surname" type="text" class="required">
                                <label for="email-2">Email *</label>
                                <input id="email-2" name="email" type="text" class="required email">
                                <label for="address-2">Address</label>
                                <input id="address-2" name="address" type="text">
                                <label for="age-2">Age (The warning step will show up if age is less than 18) *</label>
                                <input id="age-2" name="age" type="text" class="required number">
                                <p> <span class="text-danger">(*)</span> Wajib diisi</p>
                            </fieldset>

                            <h3>Halaman 3</h3>
                            <fieldset>
                                <legend>You are to young</legend>

                                <p>Please go away ;-)</p>
                            </fieldset>

                            <h3>Finish</h3>
                            <fieldset>
                                <legend>Terms and Conditions</legend>

                                <input id="acceptTerms-2" name="acceptTerms" type="checkbox" class="required"> <label
                                    for="acceptTerms-2">I
                                    agree with the Terms and Conditions.</label>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>