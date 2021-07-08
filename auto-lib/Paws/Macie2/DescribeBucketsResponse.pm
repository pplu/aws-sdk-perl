
package Paws::Macie2::DescribeBucketsResponse;
  use Moose;
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::Macie2::BucketMetadata]', traits => ['NameInRequest'], request_name => 'buckets');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::DescribeBucketsResponse

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[L<Paws::Macie2::BucketMetadata>]

An array of objects, one for each bucket that meets the filter criteria
specified in the request.


=head2 NextToken => Str

The string to use in a subsequent request to get the next page of
results in a paginated response. This value is null if there are no
additional pages.


=head2 _request_id => Str


=cut

