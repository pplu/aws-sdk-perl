
package Paws::CodeDeploy::BatchGetApplicationsOutput;
  use Moose;
  has ApplicationsInfo => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::ApplicationInfo]', traits => ['Unwrapped'], xmlname => 'applicationsInfo' );


### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplicationsOutput

=head1 ATTRIBUTES


=head2 ApplicationsInfo => ArrayRef[L<Paws::CodeDeploy::ApplicationInfo>]

  Information about the applications.


=cut

1;