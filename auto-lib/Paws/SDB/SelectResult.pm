
package Paws::SDB::SelectResult;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SDB::Item]', request_name => 'Item', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::SelectResult

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::SDB::Item>]

A list of items that match the select expression.


=head2 NextToken => Str

An opaque token indicating that more items than C<MaxNumberOfItems>
were matched, the response size exceeded 1 megabyte, or the execution
time exceeded 5 seconds.


=head2 _request_id => Str


=cut

