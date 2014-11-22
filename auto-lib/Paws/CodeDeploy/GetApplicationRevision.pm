
package Paws::CodeDeploy::GetApplicationRevision {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplicationRevision');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::GetApplicationRevisionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;