
package Paws::ES::ListElasticsearchInstanceTypesResponse;
  use Moose;
  has ElasticsearchInstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
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

