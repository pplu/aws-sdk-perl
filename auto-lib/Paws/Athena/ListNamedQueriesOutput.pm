
package Paws::Athena::ListNamedQueriesOutput;
  use Moose;
  has NamedQueryIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListNamedQueriesOutput

=head1 ATTRIBUTES


=head2 NamedQueryIds => ArrayRef[Str|Undef]

The list of unique query IDs.


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 _request_id => Str


=cut

1;