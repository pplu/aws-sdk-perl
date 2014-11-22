
package Paws::CodeDeploy::RegisterApplicationRevision {
  use Moose;
  has applicationName => (is => 'ro', isa => 'Str', required => 1);
  has description => (is => 'ro', isa => 'Str');
  has revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterApplicationRevision');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;