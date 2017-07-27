<?php
class lilac_ControllerCommonHeader extends ControllerCommonHeader {

public function preRender( $template_buffer, $template_name, &$data ) {
      if (!$this->endsWith( $template_name, '/template/common/header.tpl' )) {
      return parent::preRender( $template_buffer, $template_name, $data );
    }
       
        // add new controller variables
            $data['thm_theme']=$this->config->get('theme_default_directory');
            $data['thmlilac_home_option']=$this->config->get('thmlilac_home_option');
            $data['thmlilac_menubar_cb']=$this->config->get('thmlilac_menubar_cb');   
            $data['thmlilac_menubar_cbtitle']=$this->config->get('thmlilac_menubar_cbtitle');
            $data['thmlilac_menubar_cbcontent']=html_entity_decode($this->config->get('thmlilac_menubar_cbcontent'));
            $data['thmlilac_headercb_ed']=$this->config->get('thmlilac_headercb_ed');   
            $data['thmlilac_headercb_content']=$this->config->get('thmlilac_headercb_content');
             $data['thmlilac_headertsb_ed']=$this->config->get('thmlilac_headertsb_ed');   
            $data['thmlilac_headertsb_content']=$this->config->get('thmlilac_headertsb_content');
            $data['thm_config_seo_url']=$this->config->get('config_seo_url');
             
            $this->load->language( 'common/header' );
            $data['text_menu'] = $this->language->get( 'text_menu' );
            $data['text_all_categories'] = $this->language->get( 'text_all_categories' );
            $data['text_welcome'] = $this->language->get( 'text_welcome' );
            $data['text_home'] = $this->language->get('text_home');
            $data['text_menu'] = $this->language->get('text_menu');
            $data['text_register'] = $this->language->get('text_register');
            $data['text_or'] = $this->language->get('text_or');
            $data['register'] = $this->url->link('account/register', '', true);
            $data['text_blog'] = $this->language->get( 'text_blog' );
            $data['blog_href']=$this->url->link('thmblog/article');
            $data['text_information'] = $this->language->get('text_information');             
            $data['compare_href']=$this->url->link('product/compare');   
            $data['thmblog_status'] = $this->config->get('thmblog_status');
            $data['text_search'] = $this->language->get('text_search');      

            /*Main color section */
            $data['thmlilac_fonttransform']=$this->config->get('thmlilac_fonttransform');
            $data['thmlilac_sale_labelcolor']=$this->config->get('thmlilac_sale_labelcolor');

            $data['thmlilac_body_bg_ed']=$this->config->get('thmlilac_body_bg_ed');
            $data['thmlilac_body_bg']=$this->config->get('thmlilac_body_bg');

            $data['thmlilac_fontcolor_ed']=$this->config->get('thmlilac_fontcolor_ed');            
            $data['thmlilac_fontcolor']=$this->config->get('thmlilac_fontcolor');

            $data['thmlilac_linkcolor_ed']=$this->config->get('thmlilac_linkcolor_ed');
            $data['thmlilac_linkcolor']=$this->config->get('thmlilac_linkcolor');

            $data['thmlilac_linkhovercolor_ed']=$this->config->get('thmlilac_linkhovercolor_ed');
            $data['thmlilac_linkhovercolor']=$this->config->get('thmlilac_linkhovercolor');

            $data['thmlilac_headerbg_ed']=$this->config->get('thmlilac_headerbg_ed');
            $data['thmlilac_headerbg']=$this->config->get('thmlilac_headerbg');

            $data['thmlilac_headerlinkcolor_ed']=$this->config->get('thmlilac_headerlinkcolor_ed');
            $data['thmlilac_headerlinkcolor']=$this->config->get('thmlilac_headerlinkcolor');

            $data['thmlilac_headerlinkhovercolor_ed']=$this->config->get('thmlilac_headerlinkhovercolor_ed');
            $data['thmlilac_headerlinkhovercolor']=$this->config->get('thmlilac_headerlinkhovercolor');            
            
            $data['thmlilac_headerclcolor_ed']=$this->config->get('thmlilac_headerclcolor_ed');
            $data['thmlilac_headerclcolor']=$this->config->get('thmlilac_headerclcolor');

            $data['thmlilac_mmbgcolor_ed']=$this->config->get('thmlilac_mmbgcolor_ed');
            $data['thmlilac_mmbgcolor']=$this->config->get('thmlilac_mmbgcolor');

            $data['thmlilac_mmlinkscolor_ed']=$this->config->get('thmlilac_mmlinkscolor_ed');
            $data['thmlilac_mmlinkscolor']=$this->config->get('thmlilac_mmlinkscolor');

            $data['thmlilac_mmlinkshovercolor_ed']=$this->config->get('thmlilac_mmlinkshovercolor_ed');
            $data['thmlilac_mmlinkshovercolor']=$this->config->get('thmlilac_mmlinkshovercolor');

            $data['thmlilac_mmslinkscolor_ed']=$this->config->get('thmlilac_mmslinkscolor_ed');
            $data['thmlilac_mmslinkscolor']=$this->config->get('thmlilac_mmslinkscolor');

            $data['thmlilac_mmslinkshovercolor_ed']=$this->config->get('thmlilac_mmslinkshovercolor_ed');
            $data['thmlilac_mmslinkshovercolor']=$this->config->get('thmlilac_mmslinkshovercolor');

            $data['thmlilac_buttoncolor_ed']=$this->config->get('thmlilac_buttoncolor_ed');
            $data['thmlilac_buttoncolor']=$this->config->get('thmlilac_buttoncolor');

            $data['thmlilac_buttonhovercolor_ed']=$this->config->get('thmlilac_buttonhovercolor_ed');
            $data['thmlilac_buttonhovercolor']=$this->config->get('thmlilac_buttonhovercolor');

            $data['thmlilac_pricecolor_ed']=$this->config->get('thmlilac_pricecolor_ed');
            $data['thmlilac_pricecolor']=$this->config->get('thmlilac_pricecolor');

            $data['thmlilac_oldpricecolor_ed']=$this->config->get('thmlilac_oldpricecolor_ed');
            $data['thmlilac_oldpricecolor']=$this->config->get('thmlilac_oldpricecolor');

            $data['thmlilac_newpricecolor_ed']=$this->config->get('thmlilac_newpricecolor_ed');
            $data['thmlilac_newpricecolor']=$this->config->get('thmlilac_newpricecolor');

            $data['thmlilac_footerbg_ed']=$this->config->get('thmlilac_footerbg_ed');
            $data['thmlilac_footerbg']=$this->config->get('thmlilac_footerbg');

            $data['thmlilac_footerlinkcolor_ed']=$this->config->get('thmlilac_footerlinkcolor_ed');
            $data['thmlilac_footerlinkcolor']=$this->config->get('thmlilac_footerlinkcolor');

            $data['thmlilac_footerlinkhovercolor_ed']=$this->config->get('thmlilac_footerlinkhovercolor_ed');
            $data['thmlilac_footerlinkhovercolor']=$this->config->get('thmlilac_footerlinkhovercolor');

            $data['thmlilac_powerbycolor_ed']=$this->config->get('thmlilac_powerbycolor_ed');
            $data['thmlilac_powerbycolor']=$this->config->get('thmlilac_powerbycolor');

            $data['thmlilac_fonttransform']=$this->config->get('thmlilac_fonttransform');
            $data['thmlilac_fonttransform']=$this->config->get('thmlilac_fonttransform');

            /*Main color section */     

            // if (isset($this->request->get['search'])) {
            // $data['search'] = $this->request->get['search'];
            // } else {
            // $data['search'] = '';
            // }

            $this->load->model('setting/setting');
            $data['cbim_data']=$this->model_setting_setting->getSetting('custom_menu_content');
            $this->load->model('tool/image');
            $data['cat_id']=0;


            if(isset($this->request->get['path'])) {
              $path = $this->request->get['path'];
              $cats = explode('_', $path);
             $data['cat_id'] = $cats[0];
            } 
          

          
         $data['text_welcome'] = sprintf($this->language->get('text_welcome'), $this->url->link('account/login', '', true), $this->url->link('account/register', '', true));
         $data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', true), $this->customer->getFirstName(), $this->url->link('account/logout', '', true));
         
        if (isset($this->request->get['category_id'])) {
        $data['category_id'] = $this->request->get['category_id'];
        } else {
        $data['category_id'] = 0;
        }

       $this->load->model('catalog/category');
       $this->load->model('catalog/product');

        // for only Top Categories
        $data['categories1'] = array();
        $categories_1 = $this->model_catalog_category->getCategories(0);
          

          foreach ($categories_1 as $category_1) {
            if($category_1['top']){
             $level_2_data = array();
             
             $categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);
             
             foreach ($categories_2 as $category_2) {
                $level_3_data = array();
                
                $categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);
                
                foreach ($categories_3 as $category_3) {
                   $level_3_data[] = array(
                      'name' => $category_3['name'],
                                           'column'   => $category_3['column'] ? $category_3['column'] : 1,
                      'href' => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']),
                      'category_id'=> $category_3['category_id']
                   );
                }
                
                $level_2_data[] = array(
                   'name'     => $category_2['name'],
                   'children' => $level_3_data,
                   'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']),
                   'category_id'=> $category_2['category_id']   
                );               
             }
             
             $data['categories1'][] = array(
                'name'     => $category_1['name'],
                'children' => $level_2_data,
                'column'   => $category_1['column'] ? $category_1['column'] : 1,
                'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id']),
                'category_id'=> $category_1['category_id'],
                'thmlilac_topcaticon' => $this->config->get('thmlilac_topcaticon'.$category_1['category_id'])
             );
          } 
        }
        //echo 1401
        //To get all(top checkbox selected categories and not selected categories) categories for search drop down  
      //  echo "<pre>";print_r($data['categories1']);exit();
        $data['all_categories'] = array();
        $all_categories = $this->model_catalog_category->getCategories(0);
          

          foreach ($all_categories as $category_1) {
            
             $level_2_data = array();
             $categories_2 = $this->model_catalog_category->getCategories($category_1['category_id']);
             
             foreach ($categories_2 as $category_2) {

                $level_3_data = array();
                $categories_3 = $this->model_catalog_category->getCategories($category_2['category_id']);
                
                foreach ($categories_3 as $category_3) {
                   $level_3_data[] = array(
                      'name' => $category_3['name'],
                                           'column'   => $category_3['column'] ? $category_3['column'] : 1,
                      'href' => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id'] . '_' . $category_3['category_id']),
                      'category_id'=> $category_3['category_id']
                   );
                }
                
                $level_2_data[] = array(
                   'name'     => $category_2['name'],
                   'children' => $level_3_data,
                   'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id'] . '_' . $category_2['category_id']),
                   'category_id'=> $category_2['category_id']   
                );               
             }
             
             $data['all_categories'][] = array(
                'name'     => $category_1['name'],
                'children' => $level_2_data,
                'column'   => $category_1['column'] ? $category_1['column'] : 1,
                'href'     => $this->url->link('product/category', 'path=' . $category_1['category_id']),
                'category_id'=> $category_1['category_id']
             );
           
        }


     // For manufacture page specific css
      if (isset($this->request->get['route'])) {
        if (isset($this->request->get['manufacturer_id'])) {
            $brand_class=$this->request->get['route'];
            $data['brand_class'] = str_replace('/', '-', $this->request->get['route']);//exit;
        } else { $brand_class=''; $data['brand_class']='';  }
      } 

      // for information links on header
        $this->load->model('catalog/information');

        $data['informations'] = array();

        foreach ($this->model_catalog_information->getInformations() as $result) {
          if ($result['bottom']) {
            $data['informations'][] = array(
              'title' => $result['title'],
              'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
            );
          }
        }

        $data['category_page']="";
            //print_r($_SERVER['REQUEST_URI']);exit();
            
              if(isset($this->request->get['route']))                
              {
                $page_route=$this->request->get['route'];
               if($page_route=="product/category" || $page_route=='thmblog/article' || $page_route=='thmblog/article/tag' || $page_route=='thmblog/article/view' || $page_route=='thmblog/search' || $page_route=='thmblog/category' || $page_route=='thmblog' || $page_route=='information/information')
                
                {
                  $data['category_page']="category_page";
                }
              }


        // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
    }
    
    protected function endsWith( $haystack, $needle ) {
    if (strlen( $haystack ) < strlen( $needle )) {
      return false;
    }
    return (substr( $haystack, strlen($haystack)-strlen($needle), strlen($needle) ) == $needle);
   }
}