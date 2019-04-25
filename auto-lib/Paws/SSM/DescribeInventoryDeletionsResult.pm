
package Paws::SSM::DescribeInventoryDeletionsResult;
  use Moose;
  has InventoryDeletions => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryDeletionStatusItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInventoryDeletionsResult

=head1 ATTRIBUTES


=head2 InventoryDeletions => ArrayRef[L<Paws::SSM::InventoryDeletionStatusItem>]

A list of status items for deleted inventory.


=head2 NextToken => Str

The token for the next set of items to return. Use this token to get
the next set of results.


=head2 _request_id => Str


=cut

1;