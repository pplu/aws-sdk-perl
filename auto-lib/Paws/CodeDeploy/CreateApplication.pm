
package Paws::CodeDeploy::CreateApplication {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateApplicationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;