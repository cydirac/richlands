<?php
class thmblog_ControllerCommonColumnLeft extends newslettersubscription_ControllerCommonColumnLeft {

    /* overridden method, this newly introduced function is always called
       before the final rendering
    */
    public function preRender( $template_buffer, $template_name, &$data ) {

        if ($template_name != 'common/column_left.tpl') {
            return parent::preRender( $template_buffer, $template_name, $data );
        }

        // modify template file
        if($this->config->get('thmblog_status')==1) {    
        $this->load->language('thmblog/blog');
        $data['text_blog'] = $this->language->get('text_blog');
        $data['text_blog_category'] = $this->language->get('text_blog_category');
        $data['text_blog_post'] = $this->language->get('text_blog_post');
        $data['text_blog_comment'] = $this->language->get('text_blog_comment');       
       
        $thmblog = array();

         if ($this->user->hasPermission('access', 'thmblog/category')) {
            $thmblog[] = array(
              'name'     => $this->language->get('text_blog_category'),
              'href'     => $this->url->link('thmblog/category', 'token=' . $this->session->data['token'], true),
              'children' => array()   
            );  
          }          
          if ($this->user->hasPermission('access', 'thmblog/article')) {
            $thmblog[] = array(
              'name'     => $this->language->get('text_blog_post'),
              'href'     => $this->url->link('thmblog/article', 'token=' . $this->session->data['token'], true),
              'children' => array()   
            );  
          }
          if ($this->user->hasPermission('access', 'thmblog/comment')) {
            $thmblog[] = array(
              'name'     => $this->language->get('text_blog_comment'),
              'href'     => $this->url->link('thmblog/comment', 'token=' . $this->session->data['token'], true),
              'children' => array()   
            );  
          }
          
               
          if ($thmblog) {
                $data['menus'][] = array(
                    'id'       => 'blog',
                    'icon'     => 'fa fa-rss', 
                    'name'     => $this->language->get('text_blog'),
                    'href'     => '',
                    'children' => $thmblog
                );
            }
          
        }    
        // call parent method
        return parent::preRender( $template_buffer, $template_name, $data );
    }
}
?> 
