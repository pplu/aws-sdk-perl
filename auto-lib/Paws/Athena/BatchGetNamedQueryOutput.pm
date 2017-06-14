
package Paws::Athena::BatchGetNamedQueryOutput;
  use Moose;
  has NamedQueries => (is => 'ro', isa => 'ArrayRef[Paws::Athena::NamedQuery]');
  has UnprocessedNamedQueryIds => (is => 'ro', isa => 'ArrayRef[Paws::Athena::UnprocessedNamedQueryId]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::BatchGetNamedQueryOutput

=head1 ATTRIBUTES


=head2 NamedQueries => ArrayRef[L<Paws::Athena::NamedQuery>]

Information about the named query IDs submitted.


=head2 UnprocessedNamedQueryIds => ArrayRef[L<Paws::Athena::UnprocessedNamedQueryId>]

Information about provided query IDs.


=head2 _request_id => Str


=cut

1;