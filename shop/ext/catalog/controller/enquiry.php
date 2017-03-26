<?php

class ControllerExtensionModuleEnquiry extends Controller {
	
	public function checkout_cart_before($route, $args) {
		
	}
	
	public function checkout_cart_after($route, $args, &$output) {
		
	}

	public function checkout_checkout_before(&$route, $args) {
		
	}
	
	public function checkout_checkout_after(&$route, $args, &$output) {

	}
	
	public function checkout_confirm_before(&$route, $args) {
		
		//Shipping Address
		$this->session->data['shipping_address']['firstname'] = '';
		$this->session->data['shipping_address']['lastname'] = '';
		$this->session->data['shipping_address']['company'] = '';
		$this->session->data['shipping_address']['address_1'] = '';
		$this->session->data['shipping_address']['address_2'] = '';
		$this->session->data['shipping_address']['city'] = '';
		$this->session->data['shipping_address']['postcode'] = '';
		$this->session->data['shipping_address']['zone'] = '';
		$this->session->data['shipping_address']['zone_id'] = '';
		$this->session->data['shipping_address']['country'] = '';
		$this->session->data['shipping_address']['country_id'] = '';
		$this->session->data['shipping_address']['address_format'] = '';
		
		//Shipping Method
		$this->session->data['shipping_method']['title'] = '';
		$this->session->data['shipping_method']['code'] = '';
		
		//Payment Address
		$this->session->data['payment_address']['firstname'] = '';
		$this->session->data['payment_address']['lastname'] = '';
		$this->session->data['payment_address']['company'] = '';
		$this->session->data['payment_address']['address_1'] = '';
		$this->session->data['payment_address']['address_2'] = '';
		$this->session->data['payment_address']['postcode'] = '';
		$this->session->data['payment_address']['city'] = '';
		$this->session->data['payment_address']['country_id'] = '';
		$this->session->data['payment_address']['zone_id'] = '';
		$this->session->data['payment_address']['zone'] = '';
		$this->session->data['payment_address']['country'] = '';
		$this->session->data['payment_address']['address_format'] = '';
		
		//Payment Method
		$this->session->data['payment_method']['code'] = 'free_checkout';
		$this->session->data['payment_method']['title'] = 'Free Checkout';
		
		//Register Customer
		$this->load->model('account/customer');
		$customer_id = $this->model_account_customer->addCustomer($this->request->post);
		
		$this->session->data['account'] = 'guest';
		
		$this->session->data['guest']['customer_id'] = $customer_id;
		$this->session->data['guest']['customer_group_id'] = 1;
		$this->session->data['guest']['firstname'] = $this->request->post['firstname'];
		$this->session->data['guest']['lastname'] = $this->request->post['lastname'];
		$this->session->data['guest']['email'] = $this->request->post['email'];
		$this->session->data['guest']['telephone'] = $this->request->post['telephone'];
		$this->session->data['guest']['fax'] = $this->request->post['fax'];
		$this->session->data['guest']['custom_field'] = array();
		$this->session->data['comment'] = $this->request->post['enquiry'];

		$action = new Action($route);
		$result = $action->execute($this->registry, array($args));
		
		$route = 'checkout/success';
		$action = new Action($route);
		$result = $action->execute($this->registry, array($args));
		
		if ($result) {
			return $result;
		} else if ($this->response->getOutput()) {
			$this->response->output();
			exit;
		}
		

	}
	
	public function checkout_confirm_after(&$route, $args, &$output) {

	}

}