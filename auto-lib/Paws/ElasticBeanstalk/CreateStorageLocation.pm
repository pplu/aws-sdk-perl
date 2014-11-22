
package Paws::ElasticBeanstalk::CreateStorageLocation {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStorageLocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::CreateStorageLocationResultMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStorageLocationResult');
}
1;