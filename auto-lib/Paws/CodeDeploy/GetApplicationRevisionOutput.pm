
package Paws::CodeDeploy::GetApplicationRevisionOutput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'applicationName' );
  has Revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', traits => ['Unwrapped'], xmlname => 'revision' );
  has RevisionInfo => (is => 'ro', isa => 'Paws::CodeDeploy::GenericRevisionInfo', traits => ['Unwrapped'], xmlname => 'revisionInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetApplicationRevisionOutput

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application that corresponds to the revision.


=head2 Revision => L<Paws::CodeDeploy::RevisionLocation>

Additional information about the revision, including type and location.


=head2 RevisionInfo => L<Paws::CodeDeploy::GenericRevisionInfo>

General information about the revision.


=head2 _request_id => Str


=cut

1;