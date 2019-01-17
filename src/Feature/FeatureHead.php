<?php
namespace Inferno\InfernoFeature\Feature;
use Inferno\InfernoElemental\Element\ElementFeatureExtension;
use SilverStripe\Forms\DropdownField;
use SilverStripe\Forms\TextField;
use SilverStripe\ORM\DataObject;

class FeatureHead extends DataObject{
    private static $table_name = 'FeatureHead';
	private static $db = array(
		'RowName' => 'Varchar',
		'FirstTick' => 'Varchar',
		'SecondTick' => 'Varchar',
		'ThirdTick' => 'Varchar',
		'FourthTick' => 'Varchar',
		'FirstText' => 'Varchar',
		'SecondText' => 'Varchar',
		'ThirdText' => 'Varchar',
		'FourthText' => 'Varchar',

	);

    private static $has_one = array(
		'Featureowner' => ElementFeatureExtension::class
	);

	public function getCMSFields() {
		$TickArray = array('0'=>'Empty','1' => 'No Tick', '2' => 'Tick', '3' => 'Text');
  	$fields = parent::getCMSFields();



		$fields->addFieldsToTab("Root.Main", array(
		TextField::create('RowName','Choose row name'),
		DropdownField::create('FirstTick','Does this row support the feature?',$TickArray),
		TextField::create('FirstText','Text for column')->hideUnless("FirstTick")->isEqualTo(3)->end(),

		 ),'SecondTick');
		$fields->addFieldsToTab("Root.Main", array(
		DropdownField::create('SecondTick','Does this row support the feature?',$TickArray),
		TextField::create('SecondText','Text for column')->hideUnless("SecondTick")->isEqualTo(3)->end(),
		),'ThirdTick');
		$fields->addFieldsToTab("Root.Main", array(
		DropdownField::create('ThirdTick','Does this row support the feature?',$TickArray),
		TextField::create('ThirdText','Text for column')->hideUnless("ThirdTick")->isEqualTo(3)->end(),

		),'FourthTick');
		$fields->addFieldsToTab("Root.Main", array(
		DropdownField::create('FourthTick','Does this row support the feature?',$TickArray),
		TextField::create('FourthText','Text for column')->hideUnless("FourthTick")->isEqualTo(3)->end(),
		));
	return $fields;
	}
	private static $summary_fields = array(
		'RowName' => 'Feature',
		'FirstTick' => 'First Feature',
		'SecondTick' => 'Second Feature',
		'ThirdTick' => 'Third Feature',
		'FourthTick' => 'Fourth Feature',
	);

}
