
package Paws::StorageGateway::DescribeBandwidthRateLimitScheduleOutput;
  use Moose;
  has BandwidthRateLimitIntervals => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::BandwidthRateLimitInterval]');
  has GatewayARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeBandwidthRateLimitScheduleOutput

=head1 ATTRIBUTES


=head2 BandwidthRateLimitIntervals => ArrayRef[L<Paws::StorageGateway::BandwidthRateLimitInterval>]

An array that contains the bandwidth rate limit intervals for a tape or
volume gateway.


=head2 GatewayARN => Str




=head2 _request_id => Str


=cut

1;