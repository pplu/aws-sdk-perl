
package Paws::ElasticTranscoder::TestRole {
  use Moose;
  has InputBucket => (is => 'ro', isa => 'Str', required => 1);
  has OutputBucket => (is => 'ro', isa => 'Str', required => 1);
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Topics => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticTranscoder::TestRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TestRoleResult');
}
1;