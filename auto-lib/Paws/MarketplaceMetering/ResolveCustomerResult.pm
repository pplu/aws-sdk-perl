# Generated from json/callresult_class.tt

package Paws::MarketplaceMetering::ResolveCustomerResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceMetering::Types qw//;
  has CustomerIdentifier => (is => 'ro', isa => Str);
  has ProductCode => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProductCode' => {
                                  'type' => 'Str'
                                },
               'CustomerIdentifier' => {
                                         'type' => 'Str'
                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::ResolveCustomerResult

=head1 ATTRIBUTES


=head2 CustomerIdentifier => Str

The CustomerIdentifier is used to identify an individual customer in
your application. Calls to BatchMeterUsage require CustomerIdentifiers
for each UsageRecord.


=head2 ProductCode => Str

The product code is returned to confirm that the buyer is registering
for your product. Subsequent BatchMeterUsage calls should be made using
this product code.


=head2 _request_id => Str


=cut

1;