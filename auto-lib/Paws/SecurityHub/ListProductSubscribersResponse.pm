
package Paws::SecurityHub::ListProductSubscribersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ProductSubscribers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListProductSubscribersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token that is required for pagination.


=head2 ProductSubscribers => ArrayRef[Str|Undef]

A list of account IDs that are subscribed to the product.


=head2 _request_id => Str


=cut

