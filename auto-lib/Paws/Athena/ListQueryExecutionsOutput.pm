
package Paws::Athena::ListQueryExecutionsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryExecutionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListQueryExecutionsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to be used by the next request if this request is truncated.


=head2 QueryExecutionIds => ArrayRef[Str|Undef]

The unique IDs of each query execution as an array of strings.


=head2 _request_id => Str


=cut

1;