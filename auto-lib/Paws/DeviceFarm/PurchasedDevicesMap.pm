package Paws::DeviceFarm::PurchasedDevicesMap {
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ANDROID => (is => 'ro', isa => 'Int');
  has IOS => (is => 'ro', isa => 'Int');
}
1
