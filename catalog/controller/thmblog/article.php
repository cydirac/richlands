<?php  
class ControllerThmblogArticle extends Controller {

	public function index() {

		$this->language->load('thmblog/article');
		$this->load->model('tool/image');
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('theme_default_directory').'/stylesheet/thmblog.css');
		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_blog_title'),
			'href' => $this->url->link('thmblog/article')
		);

		$data['heading_title'] = $this->language->get('heading_blog_title');
		$data['publish_at_title'] = $this->language->get('publish_at_title');
		$data['publish_in_title'] = $this->language->get('publish_in_title');
		$data['publish_on_title'] = $this->language->get('publish_on_title');
		$data['text_no_pq_found'] = $this->language->get('text_no_pq_found');
		$data['text_read_more'] = $this->language->get('text_read_more');
		$data['text_tags'] = $this->language->get('text_tags');
		$data['text_comments'] = $this->language->get('text_comments');
		
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		$limit=20;
		$filter_data = array(
			'start'             => ($page - 1) * $limit,
			'limit'             => $limit
		);

		$this->load->model('thmblog/article');
		$article_total = $this->model_thmblog_article->getTotalArticles($filter_data);
		
		$data['articles'] = array();
		$results = $this->model_thmblog_article->getArticles($filter_data);

		$blogmeta_detail=$this->config->get('thmblog_description');
		$get_language_data=$blogmeta_detail[$this->config->get('config_language_id')];
	
		$data['tag_status'] = $this->config->get('thmblog_allow_tag');
		$data['categoryname_status'] = $this->config->get('thmblog_allow_categoryname');
		$this->document->setTitle($get_language_data['metatitle']);
		$this->document->setDescription($get_language_data['metadescription']);
		$this->document->setKeywords($get_language_data['metakeyword']);

		foreach ($results as $result) {
			$comment_total = $this->model_thmblog_article->getTotalCommentsByArticleId($result['blog_id']);
			$categoryName = $this->model_thmblog_article->getcategoryNamebyArticle($result['blog_id']);
			$articletags  = array();
		      if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 915, 425);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 915, 425);
				}

				if($result['tags']){
					$tmtags = explode( ",",$result['tags']);
					foreach( $tmtags as $tag ){
					$articletags[trim($tag)] = $this->url->link( 'thmblog/search','tmtag='.trim($tag) );
					}
				}
				else {
					$articletags=array();
				}

			$data['articles'][] = array(
				'name' => $result['name'],
				'thumb' => $image,
				'author' => $result['author'],
				'publish_date' => $result['publish_date'],
				'tags' => $result['tags'],
				'categoryname'=>$categoryName,
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 800) . '..',
				'href'     => $this->url->link('thmblog/article/view', 'tmblogarticle_id=' . $result['blog_id']),
				'articletags'=>$articletags,
				'comment_total'=> $comment_total
			);
		}
		
		$pagination = new Pagination();
		$pagination->total = $article_total;
		$pagination->page = $page;
		$pagination->limit = $limit;
		$pagination->url = $this->url->link('thmblog/article', '&page={page}');
		$data['pagination'] = $pagination->render();
		$data['results'] = sprintf($this->language->get('text_pagination'), ($article_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($article_total - $limit)) ? $article_total : ((($page - 1) * $limit) + $limit), $article_total, ceil($article_total / $limit));

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		
		 
		$this->response->setOutput($this->load->view('thmblog/article', $data));
		

	}

	public function view() {
		
		$this->language->load('thmblog/article');
		$this->load->model('tool/image');
		$this->document->addStyle('catalog/view/theme/'.$this->config->get('theme_default_directory').'/stylesheet/thmblog.css');
		if (isset($this->request->get['tmblogarticle_id'])) {
			  $current_article_id = (int)$this->request->get['tmblogarticle_id'];
		} else {
			  $current_article_id = 0;
		}

		$data['breadcrumbs'] = array();
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);
		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_blog_title'),
			'href' => $this->url->link('thmblog/article')
		);

		$data['heading_title'] = $this->language->get('heading_blog_title');
		$data['publish_at_title'] = $this->language->get('publish_at_title');
		$data['publish_in_title'] = $this->language->get('publish_in_title');
		$data['publish_on_title'] = $this->language->get('publish_on_title');
		$data['text_blog_by'] = $this->language->get('text_blog_by');
		$data['text_no_pq_found'] = $this->language->get('text_no_pq_found');
		$data['text_write'] = $this->language->get('text_write');
		$data['text_login'] = sprintf($this->language->get('text_login'), $this->url->link('account/login', '', true), $this->url->link('account/register', '', true));
		$data['text_note'] = $this->language->get('text_note');
		$data['text_tags'] = $this->language->get('text_tags');
		$data['entry_name'] = $this->language->get('entry_name');
		$data['entry_review'] = $this->language->get('entry_review');
		$data['text_comment'] = $this->language->get('text_comment');
		$data['entry_rating'] = $this->language->get('entry_rating');
		$data['entry_good'] = $this->language->get('entry_good');
		$data['entry_bad'] = $this->language->get('entry_bad');
		$data['button_continue'] = $this->language->get('button_continue');
		$data['text_loading'] = $this->language->get('text_loading');
		$data['text_tax'] = $this->language->get('text_tax');
		$data['text_read_more'] = $this->language->get('text_read_more');
		$data['button_cart'] = $this->language->get('button_cart');
		$data['button_wishlist'] = $this->language->get('button_wishlist');
		$data['button_compare'] = $this->language->get('button_compare');

		$data['tmblogarticle_id'] = (int)$this->request->get['tmblogarticle_id'];

		$data['articledetail'] = array();
		$data['review_status'] = $this->config->get('thmblog_allow_comment');
		$data['categoryname_status'] = $this->config->get('thmblog_allow_categoryname');
		$data['sociallinks_status'] = $this->config->get('thmblog_allow_sociallinks');
		$data['thmlilac_sale_labeltitle']=$this->config->get('thmlilac_sale_labeltitle');
        $data['thmlilac_sale_label'] = $this->config->get('thmlilac_sale_label');
		
		if ($this->config->get('thmblog_allow_guestcomment') || $this->customer->isLogged()) {
				$data['review_guest'] = true;
		} else {
				$data['review_guest'] = false;
		}

		$this->load->model('thmblog/article');
		$results = $this->model_thmblog_article->getArticleview($current_article_id);
		
		$data['breadcrumbs'][] = array(
			'text' => $results[0]['name'],
			'href' => $this->url->link('thmblog/article/view', 'tmblogarticle_id=' . $this->request->get['tmblogarticle_id'])
		);
		
		foreach ($results as $result) {
			$categoryName = $this->model_thmblog_article->getcategoryNamebyArticle($result['blog_id']);
			if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 915, 425);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', 915, 425);
				}
			$data['articledetail'] = array(
				'name' => $result['name'],
				'thumb' => $image,
				'author' => $result['author'],
				'categoryname'=>$categoryName,
				'publish_date' => $result['publish_date'],
				'description' => html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8'),
				'title_relatedproducts'=>$result['title_relatedproducts'],
				'title_relatedarticles'=>$result['title_relatedarticles']
			);
		}

		$data['tag_status'] = $this->config->get('thmblog_allow_tag');
		
		if($result['tags']) {
			$tmtags = explode( ",",$result['tags']);
			$articletags  = array();
					
			foreach( $tmtags as $tag ){
			    $articletags[trim($tag)] = $this->url->link( 'thmblog/search','tmtag='.trim($tag) );
			}
		} else {
			$articletags = array();
		}
			
		$data['articletags'] = $articletags;
		$this->document->setTitle($results[0]['meta_title']);
		$this->document->setDescription($results[0]['meta_description']);
		$this->document->setKeywords($results[0]['meta_keyword']);

		// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$data['captcha'] = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha'));
			} else {
				$data['captcha'] = '';
			}



		$data['products'] = array();
		$results = $this->model_thmblog_article->getRelatedProduct($this->request->get['tmblogarticle_id']);	

		foreach ($results as $result) {
				
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				} else {
					$image = $this->model_tool_image->resize('placeholder.png', $this->config->get($this->config->get('config_theme') . '_image_product_width'), $this->config->get($this->config->get('config_theme') . '_image_product_height'));
				}

				if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
					$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$price = false;
				}

				if ((float)$result['special']) {
					$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
				} else {
					$special = false;
				}

				if ($this->config->get('config_tax')) {
					$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
				} else {
					$tax = false;
				}

				if ($this->config->get('config_review_status')) {
					$rating = (int)$result['rating'];
				} else {
					$rating = false;
				}

				$data['products'][] = array(
					'product_id'  => $result['product_id'],
					'thumb'       => $image,
					'name'        => $result['name'],
					'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('config_product_description_length')) . '..',
					'price'       => $price,
					'special'     => $special,
					'tax'         => $tax,
					'minimum'     => $result['minimum'] > 0 ? $result['minimum'] : 1,
					'rating'      => $rating,
					'href'        => $this->url->link('product/product', 'product_id=' . $result['product_id'])
				);
			}



		$data['relatedarticles'] = array();

		$ra_results = $this->model_thmblog_article->getRelatedArticle($this->request->get['tmblogarticle_id']);	
		if($ra_results) {

		foreach ($ra_results as $result) {
			$comment_total = $this->model_thmblog_article->getTotalCommentsByArticleId($result['blog_id']);
				if ($result['image']) {
					$image = $this->model_tool_image->resize($result['image'], 915, 425);
				} else {
					$image = $this->model_tool_image->resize('placeholder.png',915, 425);
				}


				$data['relatedarticles'][] = array(
				'blog_id' => $result['blog_id'],				
				'name'     => $result['name'],
				'thumb'     => $image,
				'author'	=> $result['author'],
				'publish_date' => $result['publish_date'],
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get('thmblog_homepage_descriptionlimit')) . '..',
				'href'     => $this->url->link('thmblog/article/view', 'tmblogarticle_id=' . $result['blog_id']),
				'comment_total'=> $comment_total
				);



			}
}
			

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		$this->response->setOutput($this->load->view('thmblog/article_view', $data));
		
	}

	public function review() {
		$this->language->load('thmblog/article');

		$this->load->model('thmblog/article');

		$data['text_no_comments'] = $this->language->get('text_no_comments');
		$data['text_comments'] = $this->language->get('text_comments');

		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}

		$data['comments'] = array();
	  
		$comment_total = $this->model_thmblog_article->getTotalCommentsByArticleId($this->request->get['tmblogarticle_id']);
	      $data['rssfeed_status'] = $this->config->get('thmblog_allow_rssfeed');
		$results = $this->model_thmblog_article->getCommentsByArticleId($this->request->get['tmblogarticle_id'], ($page - 1) * 5, 5);

		foreach ($results as $result) {
			$data['comments'][] = array(
				'user'     => $result['user'],
				'comment'       => nl2br($result['comment']),
				'rating'     => (int)$result['rating'],
				'created_at' => date($this->language->get('date_format_short'), strtotime($result['created_at']))
			);
		}

		$pagination = new Pagination();
		$pagination->total = $comment_total;
		$pagination->page = $page;
		$pagination->limit = 5;
		$pagination->url = $this->url->link('thmblog/article/review', 'tmblogarticle_id=' . $this->request->get['tmblogarticle_id'] . '&page={page}');

		$data['pagination'] = $pagination->render();

		$data['results'] = sprintf($this->language->get('text_pagination'), ($comment_total) ? (($page - 1) * 5) + 1 : 0, ((($page - 1) * 5) > ($comment_total - 5)) ? $comment_total : ((($page - 1) * 5) + 5), $comment_total, ceil($comment_total / 5));
		
		$this->response->setOutput($this->load->view('thmblog/review', $data));
		
	}

	public function write() {
		$this->load->language('thmblog/article');

		$json = array();

		if ($this->request->server['REQUEST_METHOD'] == 'POST') {
			if ((utf8_strlen($this->request->post['name']) < 3) || (utf8_strlen($this->request->post['name']) > 25)) {
				$json['error'] = $this->language->get('error_name');
			}

			if ((utf8_strlen($this->request->post['text']) < 25) || (utf8_strlen($this->request->post['text']) > 1000)) {
				$json['error'] = $this->language->get('error_text');
			}

			if (empty($this->request->post['rating']) || $this->request->post['rating'] < 0 || $this->request->post['rating'] > 5) {
				$json['error'] = $this->language->get('error_rating');
			}

			// Captcha
			if ($this->config->get($this->config->get('config_captcha') . '_status') && in_array('review', (array)$this->config->get('config_captcha_page'))) {
				$captcha = $this->load->controller('extension/captcha/' . $this->config->get('config_captcha') . '/validate');

				if ($captcha) {
					$json['error'] = $captcha;
				}
			}

			if (!isset($json['error'])) {
				$this->load->model('thmblog/article');

				$this->model_thmblog_article->addComment($this->request->get['tmblogarticle_id'], $this->request->post);

				$json['success'] = $this->language->get('text_success');
			}

		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}


	
	public function feed(){
	      if($this->config->get('thmblog_allow_rssfeed')){
		    $output='<?xml version="1.0" encoding="UTF-8" ?>';
		    $output.='<rss version="2.0">';
		    $output.= '<channel>';
		    $output .= '<title>' . $this->config->get('config_name') . '</title>';
		    $output .= '<description>' . $this->config->get('config_meta_description') . '</description>';
		    $output .= '<link>' . HTTP_SERVER . '</link>';
		    $this->load->model('thmblog/article');
		    $products = $this->model_thmblog_article->getArticles();
		    foreach ($products as $product) {
			    if ($product['description']) {
			      $output.= '<item>';
			      $output .= '<title>' . $product['name'] . '</title>';	
			      $output .= '<link>' . $this->url->link('thmblog/article/view', 'tmblogarticle_id=' . $product['blog_id']) . '</link>';
			      $output .= '<description>' . $product['description'] . '</description>';		
			      $output.= '</item>';
			    }
		    }
		    $output .= '</channel>';
		    $output.= '</rss>';

		    $this->response->addHeader('Content-Type: application/rss+xml');
		    $this->response->setOutput($output);
	      }
	}
}

