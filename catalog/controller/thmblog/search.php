<?php
class ControllerThmblogSearch extends Controller {
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

		$data['heading_title'] = $this->language->get('heading_title');
		$data['publish_at_title'] = $this->language->get('publish_at_title');
		$data['publish_in_title'] = $this->language->get('publish_in_title');
		$data['publish_on_title'] = $this->language->get('publish_on_title');
		$data['text_no_pq_found'] = $this->language->get('text_no_pq_found');
		$data['text_read_more'] = $this->language->get('text_read_more');
		$data['text_tags'] = $this->language->get('text_tags');
		$data['text_comments'] = $this->language->get('text_comments');
		$data['tmtag'] = $this->request->get['tmtag'];
		$data['categoryname_status'] = $this->config->get('thmblog_allow_categoryname');
		if (isset($this->request->get['page'])) {
			$page = $this->request->get['page'];
		} else {
			$page = 1;
		}
		$limit=20;
		$filter_data = array(
			'filter_tag'  => $data['tmtag'],
			'start'       => ($page - 1) * $limit,
			'limit'       => $limit
		);

		$this->load->model('thmblog/article');
		$articlebytag_total = $this->model_thmblog_article->getTotalArticlesByTag($filter_data);

		$data['tag_status'] = $this->config->get('thmblog_allow_tag');
		$data['articles'] = array();
		$results = $this->model_thmblog_article->getArticlesByTag($filter_data);
		    
		$data['breadcrumbs'][] = array(
			'text' => $this->request->get['tmtag'],
			'href' => $this->url->link('thmblog/search', 'tmtag=' . $this->request->get['tmtag'])
		);
		$data['heading_tag'] = $this->request->get['tmtag'];
		$blogmeta_detail=$this->config->get('thmblog_description');
		$get_language_data=$blogmeta_detail[$this->config->get('config_language_id')];
		
		$data['tag_status'] = $this->config->get('thmblog_allow_tag');
		
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
				
				$tmtags = explode( ",",$result['tags']);
				foreach( $tmtags as $tag ){
				$articletags[trim($tag)] = $this->url->link( 'thmblog/search','tmtag='.trim($tag) );
				}

			$data['articles'][] = array(
				'name' => $result['name'],
				'thumb' => $image,
				'author' => $result['author'],
				'publish_date' => $result['publish_date'],
				'tags' => $result['tags'],
				'categoryname'=>$categoryName,
				'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, 600) . '..',
				'href'     => $this->url->link('thmblog/article/view', 'tmblogarticle_id=' . $result['blog_id']),
				'articletags'=>$articletags,
				'comment_total'=> $comment_total
			);
		}
		
		$pagination = new Pagination();
		$pagination->total = $articlebytag_total;
		$pagination->page = $page;
		$pagination->limit = $limit;
		$pagination->url = $this->url->link('thmblog/search','tmtag=' . $this->request->get['tmtag']. '&page={page}');
		$data['pagination'] = $pagination->render();
		$data['results'] = sprintf($this->language->get('text_pagination'), ($articlebytag_total) ? (($page - 1) * $limit) + 1 : 0, ((($page - 1) * $limit) > ($articlebytag_total - $limit)) ? $articlebytag_total : ((($page - 1) * $limit) + $limit), $articlebytag_total, ceil($articlebytag_total / $limit));
		  
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		
		$this->response->setOutput($this->load->view('thmblog/article_tag', $data));
		
	}
}
