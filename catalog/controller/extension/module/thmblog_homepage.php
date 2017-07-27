<?php  
class ControllerExtensionModuleThmblogHomepage extends Controller {

	public function index() {

		$this->language->load('extension/module/thmblog_homepage');

		$data['heading_title'] = $this->language->get('heading_title');
		$data['txt_no_article_found'] = $this->language->get('txt_no_article_found');
		$data['txt_readmore'] = $this->language->get('txt_readmore');
		$data['txt_blog_text'] = $this->language->get('txt_blog_text');
		$data['txt_blog_post'] = $this->language->get('txt_blog_post');
		$data['txt_blog_comment'] = $this->language->get('txt_blog_comment');
				
		$this->load->model('tool/image');
		$this->load->model('thmblog/category');
		$data['articles'] = array();
		$data['postList'] = array();

		if($this->config->get('thmblog_homepage_header_text')!=''){
		$data['header_text'] = $this->config->get('thmblog_homepage_header_text');
		}else {
			$data['header_text']='';
		}
		$data['hideimage']=$this->config->get('thmblog_homepage_hideimage');
		$data['hidetitle']=$this->config->get('thmblog_homepage_hidetitle');
		$data['hidedescription']=$this->config->get('thmblog_homepage_hidedescription');
		$data['hidedate']=$this->config->get('thmblog_homepage_hidedate');
		$data['resizeimage']=$this->config->get('thmblog_homepage_resizeimage');
		$data['exclude_category']=$this->config->get('thmblog_homepage_article_category');

		if(!empty($data['exclude_category'])){
		    $data['exclude_category']=implode(",",$data['exclude_category']);
		}
		$filter_data = array(
			'filter_exclude_category'=>$data['exclude_category'],
			'start'       => $this->config->get('thmblog_homepage_ignorepost'),
			'limit'       => $this->config->get('thmblog_homepage_postcount')
		);
		$this->load->model('thmblog/article');
		$postList = $this->model_thmblog_category->getHomepageposts($filter_data); 

		foreach ($postList as $post_List) {
			$comment_total = $this->model_thmblog_article->getTotalCommentsByArticleId($post_List['blog_id']);
			if($data['resizeimage']){
			    if ($post_List['image']) {
						      $image = $this->model_tool_image->resize($post_List['image'], $this->config->get('thmblog_homepage_resizeimagewidth') ,$this->config->get('thmblog_homepage_resizeimageheight') );
					      } else {
						      $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('thmblog_homepage_resizeimagewidth') , $this->config->get('thmblog_homepage_resizeimageheight'));
					      }
			}else{
				 if ($post_List['image']) {
						      $image = 'image/'.$post_List['image'];
					      } else {
						      $image = $this->model_tool_image->resize('placeholder.png', $this->config->get('thmblog_homepage_resizeimagewidth') , $this->config->get('thmblog_homepage_resizeimageheight'));
					      }
			}
			$data['postList'][] = array(
					'blog_id' => $post_List['blog_id'],
					'name'     => $post_List['name'],
					'thumb'     => $image,
					'author'	=> $post_List['author'],
					'publish_date'     => $post_List['publish_date'],
					'description' => utf8_substr(strip_tags(html_entity_decode($post_List['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('thmblog_homepage_descriptionlimit')) . '..',
					'href'     => $this->url->link('thmblog/article/view', 'tmblogarticle_id=' . $post_List['blog_id']),
					'comment_total'=> $comment_total
			);
		}

		return $this->load->view('extension/module/thmblog_homepage', $data);
		

	}
}
?> 
