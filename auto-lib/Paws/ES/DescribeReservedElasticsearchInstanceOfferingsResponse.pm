
package Paws::ES::DescribeReservedElasticsearchInstanceOfferingsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ES::Types qw/ES_ReservedElasticsearchInstanceOffering/;
  has NextToken => (is => 'ro', isa => Str);
  has ReservedElasticsearchInstanceOfferings => (is => 'ro', isa => ArrayRef[ES_ReservedElasticsearchInstanceOffering]);

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
               'ReservedElasticsearchInstanceOfferings' => {
                                                             'class' => 'Paws::ES::ReservedElasticsearchInstanceOffering',
                                                             'type' => 'ArrayRef[ES_ReservedElasticsearchInstanceOffering]'
                                                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeReservedElasticsearchInstanceOfferingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReservedElasticsearchInstanceOfferings => ArrayRef[ES_ReservedElasticsearchInstanceOffering]

List of reserved Elasticsearch instance offerings


=head2 _request_id => Str


=cut

