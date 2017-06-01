<?php
namespace wstshop\common\model;
/**
 * ============================================================================
 * WSTShop网上商店
 * 版权所有 2016-2066 广州商淘信息科技有限公司，并保留所有权利。
 * 官网地址:http://www.wstshop.net
 * 交流社区:http://bbs.shangtaosoft.com
 * 联系QQ:153289970
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！未经本公司授权您只能在不用于商业目的的前提下对程序代码进行修改和使用；
 * 不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * 系统配置类
 */
class SysConfigs extends Base{
	
	/**
	 * 获取商城配置文件
	 */
	public function loadConfigs(){
		
		$rs = $this->field('fieldCode,fieldValue')->order("parentId asc,fieldSort asc")->select();
		$configs = array();
		if(count($rs)>0){
			foreach ($rs as $key=>$v){
				if($v['fieldCode']=="hotSearchs"){
					$fieldValue = str_replace("，",",",$v['fieldValue']);
					$configs[$v['fieldCode']] = explode(",",$fieldValue);
				}else{
					$configs[$v['fieldCode']] = $v['fieldValue'];
				}
			}
		}
		unset($rs);
		return $configs;
	}
}
