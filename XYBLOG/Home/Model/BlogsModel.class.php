<?php
// +----------------------------------------------------------------------
// | JIANKE [ WWW.XYSER.COM ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015 http://xyser.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( dingdayu @ JIANKE )
// +----------------------------------------------------------------------
// | Author: dingdayu <614422099@qq.com>
// +----------------------------------------------------------------------
// | DATE: DATE: 2015-10-10 17:50
// +----------------------------------------------------------------------

namespace Home\Model;
use Think\Model\RelationModel;

class BlogsModel extends RelationModel{
    protected $_link = array(
        'content'=> array(
            'mapping_type'      => self::HAS_ONE,
            'class_name'        => 'BlogContent',
            'foreign_key'        => 'bid',
            'mapping_fields'    =>  'content',
            'as_fields' => 'content',
        ),
    );
}