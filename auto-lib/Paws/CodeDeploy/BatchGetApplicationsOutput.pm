
package Paws::CodeDeploy::BatchGetApplicationsOutput;
  use Moose;
  has ApplicationsInfo => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::ApplicationInfo]', traits => ['NameInRequest'], request_name => 'applicationsInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplicationsOutput

=head1 ATTRIBUTES


=head2 ApplicationsInfo => ArrayRef[L<Paws::CodeDeploy::ApplicationInfo>]

Information about the applications.


=head2 _request_id => Str


=cut

1;