
package Paws::SSMContacts::ListPageReceiptsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Receipts => (is => 'ro', isa => 'ArrayRef[Paws::SSMContacts::Receipt]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListPageReceiptsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 Receipts => ArrayRef[L<Paws::SSMContacts::Receipt>]

A list of each acknowledgement.


=head2 _request_id => Str


=cut

1;