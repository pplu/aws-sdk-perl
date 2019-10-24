# Generated from json/callresult_class.tt

package Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceCommerceAnalytics::Types qw//;
  has DataSetRequestId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DataSetRequestId' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DataSetRequestId' => 'dataSetRequestId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCommerceAnalytics::GenerateDataSetResult

=head1 ATTRIBUTES


=head2 DataSetRequestId => Str

A unique identifier representing a specific request to the
GenerateDataSet operation. This identifier can be used to correlate a
request with notifications from the SNS topic.


=head2 _request_id => Str


=cut

1;