
package Paws::MarketplaceMetering::MeterUsageResult;
  use Moose;
  has MeteringRecordId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::MeterUsageResult

=head1 ATTRIBUTES


=head2 MeteringRecordId => Str

Metering record id.


=head2 _request_id => Str


=cut

1;