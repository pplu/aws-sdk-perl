
package Paws::S3::ListBucketMetricsConfigurationsOutput;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has MetricsConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::S3::MetricsConfiguration]', traits => ['NameInRequest'], request_name => 'MetricsConfiguration');
  has NextContinuationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketMetricsConfigurationsOutput

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

The marker that is used as a starting point for this metrics
configuration list response. This value is present if it was sent in
the request.



=head2 IsTruncated => Bool

Indicates whether the returned list of metrics configurations is
complete. A value of true indicates that the list is not complete and
the NextContinuationToken will be provided for a subsequent request.



=head2 MetricsConfigurationList => ArrayRef[L<Paws::S3::MetricsConfiguration>]

The list of metrics configurations for a bucket.



=head2 NextContinuationToken => Str

The marker used to continue a metrics configuration listing that has
been truncated. Use the NextContinuationToken from a previously
truncated list response to continue the listing. The continuation token
is an opaque value that Amazon S3 understands.




=cut

