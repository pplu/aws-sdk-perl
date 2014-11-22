
package Paws::CodeDeploy::ListApplications {
  use Moose;
  has nextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::ListApplicationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;