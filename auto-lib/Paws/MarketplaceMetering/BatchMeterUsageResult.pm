# Generated from json/callresult_class.tt

package Paws::MarketplaceMetering::BatchMeterUsageResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MarketplaceMetering::Types qw/MarketplaceMetering_UsageRecord MarketplaceMetering_UsageRecordResult/;
  has Results => (is => 'ro', isa => ArrayRef[MarketplaceMetering_UsageRecordResult]);
  has UnprocessedRecords => (is => 'ro', isa => ArrayRef[MarketplaceMetering_UsageRecord]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Results' => {
                              'class' => 'Paws::MarketplaceMetering::UsageRecordResult',
                              'type' => 'ArrayRef[MarketplaceMetering_UsageRecordResult]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UnprocessedRecords' => {
                                         'type' => 'ArrayRef[MarketplaceMetering_UsageRecord]',
                                         'class' => 'Paws::MarketplaceMetering::UsageRecord'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::BatchMeterUsageResult

=head1 ATTRIBUTES


=head2 Results => ArrayRef[MarketplaceMetering_UsageRecordResult]

Contains all UsageRecords processed by BatchMeterUsage. These records
were either honored by AWS Marketplace Metering Service or were
invalid.


=head2 UnprocessedRecords => ArrayRef[MarketplaceMetering_UsageRecord]

Contains all UsageRecords that were not processed by BatchMeterUsage.
This is a list of UsageRecords. You can retry the failed request by
making another BatchMeterUsage call with this list as input in the
BatchMeterUsageRequest.


=head2 _request_id => Str


=cut

1;