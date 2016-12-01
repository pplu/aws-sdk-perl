
package Paws::MarketplaceMetering::BatchMeterUsageResult;
  use Moose;
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceMetering::UsageRecordResult]');
  has UnprocessedRecords => (is => 'ro', isa => 'ArrayRef[Paws::MarketplaceMetering::UsageRecord]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::BatchMeterUsageResult

=head1 ATTRIBUTES


=head2 Results => ArrayRef[L<Paws::MarketplaceMetering::UsageRecordResult>]

Contains all UsageRecords processed by BatchMeterUsage. These records
were either honored by AWS Marketplace Metering Service or were
invalid.


=head2 UnprocessedRecords => ArrayRef[L<Paws::MarketplaceMetering::UsageRecord>]

Contains all UsageRecords that were not processed by BatchMeterUsage.
This is a list of UsageRecords. You can retry the failed request by
making another BatchMeterUsage call with this list as input in the
BatchMeterUsageRequest.


=head2 _request_id => Str


=cut

1;