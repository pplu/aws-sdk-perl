
package Paws::DMS::DescribeAccountAttributesResponse;
  use Moose;
  has AccountQuotas => (is => 'ro', isa => 'ArrayRef[Paws::DMS::AccountQuota]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeAccountAttributesResponse

=head1 ATTRIBUTES


=head2 AccountQuotas => ArrayRef[L<Paws::DMS::AccountQuota>]

Account quota information.


=head2 _request_id => Str


=cut

1;