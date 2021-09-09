<?php

class ControllerCommonHome extends Controller
{
    public function index()
    {
        $this->document->setTitle($this->config->get('config_meta_title'));
        $this->document->setDescription($this->config->get('config_meta_description'));
        $this->document->setKeywords($this->config->get('config_meta_keyword'));
        if (isset($this->request->get['route'])) {
            $this->document->addLink($this->config->get('config_url'), 'canonical');
        };
        //Вывод категорий на главной странице
        $data['category_id'] = ["59", "71", "102", "125"]; //велосипеды
        $this->load->model('catalog/category');
        $data['categories'] = array();
        $categories = $this->model_catalog_category->getCategories(59); //велосипеды
        $categories2 = $this->model_catalog_category->getCategories(71); //аксессуары
        $categories3 = $this->model_catalog_category->getCategories(102); //экипировка
        $categories4 = $this->model_catalog_category->getCategories(125); //запчасти
        $categories5 = $this->model_catalog_category->getCategories(193); //запчасти
        foreach ($categories as $category) {
            $category_img = $category["image"];
            $children_data = array();
            $filter_data = array(
                'filter_category_id' => $category['category_id'],
                'filter_sub_category' => true
            );
            $data['categories'][] = array(
                'category_id' => $category['category_id'],
                //'name' => $category['name'],
                'name' => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                'children' => $children_data,
                'href' => $this->url->link('product/category', 'path=' . $category['category_id']),
                'img' => $category_img,
                'min_price' => $this->model_catalog_product->getMinPriceFromCategory($category['category_id']),
            );
        }
        foreach ($categories2 as $category) {
            $category_img = $category["image"];
            $children_data = array();
            $filter_data = array(
                'filter_category_id' => $category['category_id'],
                'filter_sub_category' => true
            );
            $data['categories2'][] = array(
                'category_id' => $category['category_id'],
                //'name' => $category['name'],
                'name' => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                'children' => $children_data,
                'href' => $this->url->link('product/category', 'path=' . $category['category_id']),
                'img' => $category_img,
                'min_price' => $this->model_catalog_product->getMinPriceFromCategory($category['category_id']),
            );
        }
        foreach ($categories3 as $category) {
            $category_img = $category["image"];
            $children_data = array();
            $filter_data = array(
                'filter_category_id' => $category['category_id'],
                'filter_sub_category' => true
            );
            $data['categories3'][] = array(
                'category_id' => $category['category_id'],
                //'name' => $category['name'],
                'name' => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                'children' => $children_data,
                'href' => $this->url->link('product/category', 'path=' . $category['category_id']),
                'img' => $category_img,
                'min_price' => $this->model_catalog_product->getMinPriceFromCategory($category['category_id']),
            );
        }
        foreach ($categories4 as $category) {
            $category_img = $category["image"];
            $children_data = array();
            $filter_data = array(
                'filter_category_id' => $category['category_id'],
                'filter_sub_category' => true
            );
            $data['categories4'][] = array(
                'category_id' => $category['category_id'],
                //'name' => $category['name'],
                'name' => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                'children' => $children_data,
                'href' => $this->url->link('product/category', 'path=' . $category['category_id']),
                'img' => $category_img,
                'min_price' => $this->model_catalog_product->getMinPriceFromCategory($category['category_id']),
            );
        }
        foreach ($categories5 as $category) {
            $category_img = $category["image"];
            $children_data = array();
            $filter_data = array(
                'filter_category_id' => $category['category_id'],
                'filter_sub_category' => true
            );
            $data['categories5'][] = array(
                'category_id' => $category['category_id'],
                //'name' => $category['name'],
                'name' => $category['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
                'children' => $children_data,
                'href' => $this->url->link('product/category', 'path=' . $category['category_id']),
                'img' => $category_img,
                'min_price' => $this->model_catalog_product->getMinPriceFromCategory($category['category_id']),
            );
        }
        //
        // Brands
        $this->load->language('product/manufacturer');
        $this->load->model('catalog/manufacturer');
        $results = $this->model_catalog_manufacturer->getManufacturers();
        foreach ($results as $result) {
            $brands_img = $result["image"];
            $data['brands']['manufacturer'][] = array(
                'name' => $result['name'],
                'href' => $this->url->link('product/manufacturer/info', 'manufacturer_id=' . $result['manufacturer_id']),
                'img' => $brands_img,
                'id' => $result['manufacturer_id'],
            );
        }
        //
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['column_right'] = $this->load->controller('common/column_right');
        $data['content_top'] = $this->load->controller('common/content_top');
        $data['content_bottom'] = $this->load->controller('common/content_bottom');
        $data['footer'] = $this->load->controller('common/footer');
        $data['header'] = $this->load->controller('common/header');
        $this->response->setOutput($this->load->view('common/home', $data));
    }
}
