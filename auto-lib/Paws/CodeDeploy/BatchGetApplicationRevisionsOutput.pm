
package Paws::CodeDeploy::BatchGetApplicationRevisionsOutput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' );
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage' );
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::RevisionInfo]', traits => ['NameInRequest'], request_name => 'revisions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetApplicationRevisionsOutput

=head1 ATTRIBUTES


=head2 ApplicationName => Str

The name of the application that corresponds to the revisions.


=head2 ErrorMessage => Str

Information about errors that might have occurred during the API call.


=head2 Revisions => ArrayRef[L<Paws::CodeDeploy::RevisionInfo>]

Additional information about the revisions, including the type and
location.


=head2 _request_id => Str


=cut

1;