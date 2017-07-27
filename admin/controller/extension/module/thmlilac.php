<?php
class ControllerExtensionModuleThmlilac extends Controller {
    private $error = array(); // This is used to set the errors, if any.
 
    public function index() {
        // Loading the language file of thmlilac
        $this->load->language('extension/module/thmlilac'); 
     
        // Set the title of the page to the heading title in the Language file i.e., Hello World
        $this->document->setTitle(strip_tags($this->language->get('heading_title')));
     
        // Load the Setting Model  (All of the OpenCart Module & General Settings are saved using this Model )
        $this->load->model('setting/setting');
     
        // Start If: Validates and check if data is coming by save (POST) method
        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            // Parse all the coming data to Setting Model to save it in database.

            $this->model_setting_setting->editSetting('thmlilac', $this->request->post);
     
            // To display the success text on data save
            $this->session->data['success'] = $this->language->get('text_success');
     
            // Redirect to the Module Listing           
            $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
        }
     
        // Assign the language data for parsing it to view
        $data['heading_title'] = $this->language->get('heading_title');
     
        $data['text_edit']    = $this->language->get('text_edit');
        $data['text_yes']    = $this->language->get('text_yes');
        $data['text_no']    = $this->language->get('text_no');
        $data['text_enabled'] = $this->language->get('text_enabled');
        $data['text_disabled'] = $this->language->get('text_disabled');
        $data['text_content_top'] = $this->language->get('text_content_top');
        $data['text_content_bottom'] = $this->language->get('text_content_bottom');      
        $data['text_column_left'] = $this->language->get('text_column_left');
        $data['text_column_right'] = $this->language->get('text_column_right');
     
        $data['entry_code'] = $this->language->get('entry_code');
        $data['entry_layout'] = $this->language->get('entry_layout');
        $data['entry_position'] = $this->language->get('entry_position');
        $data['entry_status'] = $this->language->get('entry_status');
        $data['entry_sort_order'] = $this->language->get('entry_sort_order');
     
        $data['button_save'] = $this->language->get('button_save');
        $data['button_cancel'] = $this->language->get('button_cancel');
        $data['button_add_module'] = $this->language->get('button_add_module');
        $data['button_remove'] = $this->language->get('button_remove');

        $data['config_maintenance']=$this->config->get('config_maintenance');
         
        // This Block returns the warning if any
        if (isset($this->error['warning'])) {
            $data['error_warning'] = $this->error['warning'];
        } else {
            $data['error_warning'] = '';
        }
     
        // This Block returns the error code if any
        if (isset($this->error['code'])) {
            $data['error_code'] = $this->error['code'];
        } else {
            $data['error_code'] = '';
        }     
     
        // Making of Breadcrumbs to be displayed on site
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text'      => $this->language->get('text_home'),
            'href'      => $this->url->link('common/home', 'token=' . $this->session->data['token'], true),
            'separator' => false
        );
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
        );
        
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/module/thmlilac', 'token=' . $this->session->data['token'], true)
        );           
                
        $data['action'] = $this->url->link('extension/module/thmlilac', 'token=' . $this->session->data['token'], true);

        // URL to be redirected when cancel button is pressed
        $data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);      

        // This block checks, if the hello world text field is set it parses it to view otherwise get the default 
        // hello world text field from the database and parse it
        
        $config_data = array(
        
        'thmlilac_address',
        'thmlilac_phone',
        'thmlilac_email',
        'thmlilac_fb',
        'thmlilac_twitter',
        'thmlilac_gglplus',
        'thmlilac_rss',
        'thmlilac_pinterest',
        'thmlilac_linkedin',
        'thmlilac_youtube',
        'thmlilac_powerby',
        'thmlilac_home_option',
        'thmlilac_quickview_button',
        'thmlilac_scroll_totop',
        'thmlilac_sale_label',
        'thmlilac_sale_labeltitle',
        'thmlilac_sale_labelcolor',
        'thmlilac_menubar_cb',
        'thmlilac_menubar_cbtitle',
        'thmlilac_menubar_cbcontent',
        'thmlilac_vmenubar_cb',
        'thmlilac_vmenubar_cbtitle',
        'thmlilac_vmenubar_cbcontent',
        'thmlilac_product_ct',
        'thmlilac_product_cttitle',
        'thmlilac_product_ctcontent',
        'thmlilac_product_ct2',
        'thmlilac_product_ct2title',
        'thmlilac_product_ct2content',
        'thmlilac_newsletter',
        'thmlilac_newslettercontent',
        'thmlilac_footer_cb',
        'thmlilac_footer_cbcontent',
        'thmlilac_body_bg',
        'thmlilac_body_bg_ed',
        'thmlilac_fontcolor',
        'thmlilac_fontcolor_ed',
        'thmlilac_linkcolor',
        'thmlilac_linkcolor_ed',
        'thmlilac_linkhovercolor',
        'thmlilac_linkhovercolor_ed',
        'thmlilac_headerbg',
        'thmlilac_headerbg_ed',
        'thmlilac_headerlinkcolor',
        'thmlilac_headerlinkcolor_ed',
        'thmlilac_headerlinkhovercolor',
        'thmlilac_headerlinkhovercolor_ed',
        'thmlilac_headerclcolor',
        'thmlilac_headerclcolor_ed',
        'thmlilac_mmbgcolor',
        'thmlilac_mmbgcolor_ed',
        'thmlilac_mmlinkscolor',
        'thmlilac_mmlinkscolor_ed',
        'thmlilac_mmlinkshovercolor',
        'thmlilac_mmlinkshovercolor_ed',
        'thmlilac_mmslinkscolor',
        'thmlilac_mmslinkscolor_ed',
        'thmlilac_mmslinkshovercolor',
        'thmlilac_mmslinkshovercolor_ed',
        'thmlilac_buttoncolor',
        'thmlilac_buttoncolor_ed',
        'thmlilac_buttonhovercolor',
        'thmlilac_buttonhovercolor_ed',
        'thmlilac_pricecolor',
        'thmlilac_pricecolor_ed',
        'thmlilac_oldpricecolor',
        'thmlilac_oldpricecolor_ed',
        'thmlilac_newpricecolor',
        'thmlilac_newpricecolor_ed',
        'thmlilac_footerbg',
        'thmlilac_footerbg_ed',
        'thmlilac_footerlinkcolor',
        'thmlilac_footerlinkcolor_ed',
        'thmlilac_footerlinkhovercolor',
        'thmlilac_footerlinkhovercolor_ed',
        'thmlilac_powerbycolor',
        'thmlilac_powerbycolor_ed',
        'thmlilac_fonttransform',
        'thmlilac_productpage_cb',
        'thmlilac_productpage_cbcontent',
        'thmlilac_productpage_related_cb',
        'thmlilac_productpage_related_cbcontent',       
        'thmlilac_headercb_ed',
        'thmlilac_headercb_content',
        'thmlilac_headertsb_ed',
        'thmlilac_headertsb_content',
        'thmlilac_footer_fb',
        'thmlilac_footer_fbcontent',
        'thmlilac_animation_effect'
        );
        
        // icons for menu items
        $this->load->model('extension/module/custom_menu_content');
        $data['categories'] = array();
        $data['top_categories'] = array();

        $categories = $this->model_extension_module_custom_menu_content->getCategories_custom(0);
        
        foreach ($categories as $category) {
        if ($category['top']) {
        $data['top_categories'][]=$category;
         }
        }

        //creating variable name
        foreach ($data['top_categories'] as $category) {
            $config_data[]='thmlilac_topcaticon'.$category['category_id'];
        }


        foreach ($config_data as $conf) {
            if (isset($this->request->post[$conf])) {
                $data[$conf] = $this->request->post[$conf];
                
            } else {
                $data[$conf] = $this->config->get($conf);

            }
        } 

 
   
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/module/thmlilac', $data));

    }

    /* Function that validates the data when Save Button is pressed */
    protected function validate() {
 
        // Block to check the user permission to manipulate the module
        if (!$this->user->hasPermission('modify', 'extension/module/thmlilac')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }
 
        /* End Block*/
 
        // Block returns true if no error is found, else false if any error detected
        if (!$this->error) {
            return true;
        } else {
            return false;
        }
    }
}