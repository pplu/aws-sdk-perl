
package Paws::CodeDeploy::ListApplicationRevisionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Revisions => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::RevisionLocation]', traits => ['NameInRequest'], request_name => 'revisions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ListApplicationRevisionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If a large amount of information is returned, an identifier is also
returned. It can be used in a subsequent list application revisions
call to return the next set of application revisions in the list.


=head2 Revisions => ArrayRef[L<Paws::CodeDeploy::RevisionLocation>]

A list of locations that contain the matching revisions.


=head2 _request_id => Str


=cut

1;