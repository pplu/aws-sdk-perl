# Generated from json/callresult_class.tt

package Paws::MarketplaceMetering::MeterUsageResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceMetering::Types qw//;
  has MeteringRecordId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MeteringRecordId' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::MeterUsageResult

=head1 ATTRIBUTES


=head2 MeteringRecordId => Str

Metering record id.


=head2 _request_id => Str


=cut

1;