
package Paws::ES::DescribeReservedElasticsearchInstancesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ES::Types qw/ES_ReservedElasticsearchInstance/;
  has NextToken => (is => 'ro', isa => Str);
  has ReservedElasticsearchInstances => (is => 'ro', isa => ArrayRef[ES_ReservedElasticsearchInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReservedElasticsearchInstances' => {
                                                     'class' => 'Paws::ES::ReservedElasticsearchInstance',
                                                     'type' => 'ArrayRef[ES_ReservedElasticsearchInstance]'
                                                   },
               'NextToken' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeReservedElasticsearchInstancesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 ReservedElasticsearchInstances => ArrayRef[ES_ReservedElasticsearchInstance]

List of reserved Elasticsearch instances.


=head2 _request_id => Str


=cut

