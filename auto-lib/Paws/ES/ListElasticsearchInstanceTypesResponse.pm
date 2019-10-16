
package Paws::ES::ListElasticsearchInstanceTypesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ES::Types qw//;
  has ElasticsearchInstanceTypes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ElasticsearchInstanceTypes' => {
                                                 'type' => 'ArrayRef[Str|Undef]'
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

Paws::ES::ListElasticsearchInstanceTypesResponse

=head1 ATTRIBUTES


=head2 ElasticsearchInstanceTypes => ArrayRef[Str|Undef]

List of instance types supported by Amazon Elasticsearch service for
given C< ElasticsearchVersion>


=head2 NextToken => Str

In case if there are more results available NextToken would be present,
make further request to the same API with received NextToken to
paginate remaining results.


=head2 _request_id => Str


=cut

