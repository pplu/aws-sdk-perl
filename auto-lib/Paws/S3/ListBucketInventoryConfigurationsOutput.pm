
package Paws::S3::ListBucketInventoryConfigurationsOutput;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has InventoryConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::S3::InventoryConfiguration]', traits => ['NameInRequest'], request_name => 'InventoryConfiguration');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has NextContinuationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketInventoryConfigurationsOutput

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

If sent in the request, the marker that is used as a starting point for
this inventory configuration list response.



=head2 InventoryConfigurationList => ArrayRef[L<Paws::S3::InventoryConfiguration>]

The list of inventory configurations for a bucket.



=head2 IsTruncated => Bool

Indicates whether the returned list of inventory configurations is
truncated in this response. A value of true indicates that the list is
truncated.



=head2 NextContinuationToken => Str

The marker used to continue this inventory configuration listing. Use
the NextContinuationToken from this response to continue the listing in
a subsequent request. The continuation token is an opaque value that
Amazon S3 understands.




=cut

