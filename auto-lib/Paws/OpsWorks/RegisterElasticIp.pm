
package Paws::OpsWorks::RegisterElasticIp {
  use Moose;
  has ElasticIp => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterElasticIp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorks::RegisterElasticIpResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;