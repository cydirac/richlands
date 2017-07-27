<?php

class ModelModuleHideRegistrationFields extends Model {

	public function get_my_data(){

		$data = array();

		$hidden_fields = $this->config->get('hide_registration_fields');
        if(!$hidden_fields) $hidden_fields = array();
        $data['hide_registration_fields'] = $hidden_fields;
        
        $this->load->helper('hide_registration_fields');
        $data['hrf_random'] = generateRandomString();
        $data['hrf_static'] = generateStaticString();
        $data['hrf_number'] = generateRandomNumber();

        return $data;
	}
}