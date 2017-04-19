
package Paws::S3::ListBucketAnalyticsConfigurationsOutput;
  use Moose;
  has AnalyticsConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::S3::AnalyticsConfiguration]', traits => ['NameInRequest'], request_name => 'AnalyticsConfiguration');
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has NextContinuationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketAnalyticsConfigurationsOutput

=head1 ATTRIBUTES


=head2 AnalyticsConfigurationList => ArrayRef[L<Paws::S3::AnalyticsConfiguration>]

The list of analytics configurations for a bucket.



=head2 ContinuationToken => Str

The ContinuationToken that represents where this request began.



=head2 IsTruncated => Bool

Indicates whether the returned list of analytics configurations is
complete. A value of true indicates that the list is not complete and
the NextContinuationToken will be provided for a subsequent request.



=head2 NextContinuationToken => Str

NextContinuationToken is sent when isTruncated is true, which indicates
that there are more analytics configurations to list. The next request
must include this NextContinuationToken. The token is obfuscated and is
not a usable value.




=cut

