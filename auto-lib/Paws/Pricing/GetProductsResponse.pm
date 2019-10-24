# Generated from json/callresult_class.tt

package Paws::Pricing::GetProductsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Pricing::Types qw//;
  has FormatVersion => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);
  has PriceList => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FormatVersion' => {
                                    'type' => 'Str'
                                  },
               'PriceList' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Pricing::GetProductsResponse

=head1 ATTRIBUTES


=head2 FormatVersion => Str

The format version of the response. For example, aws_v1.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 PriceList => ArrayRef[Str|Undef]

The list of products that match your filters. The list contains both
the product metadata and the price information.


=head2 _request_id => Str


=cut

1;