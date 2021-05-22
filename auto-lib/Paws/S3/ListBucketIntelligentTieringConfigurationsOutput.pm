
package Paws::S3::ListBucketIntelligentTieringConfigurationsOutput;
  use Moose;
  has ContinuationToken => (is => 'ro', isa => 'Str');
  has IntelligentTieringConfigurationList => (is => 'ro', isa => 'ArrayRef[Paws::S3::IntelligentTieringConfiguration]', request_name => 'IntelligentTieringConfiguration', traits => ['NameInRequest']);
  has IsTruncated => (is => 'ro', isa => 'Bool');
  has NextContinuationToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketIntelligentTieringConfigurationsOutput

=head1 ATTRIBUTES


=head2 ContinuationToken => Str

The ContinuationToken that represents a placeholder from where this
request should begin.



=head2 IntelligentTieringConfigurationList => ArrayRef[L<Paws::S3::IntelligentTieringConfiguration>]

The list of S3 Intelligent-Tiering configurations for a bucket.



=head2 IsTruncated => Bool

Indicates whether the returned list of analytics configurations is
complete. A value of true indicates that the list is not complete and
the NextContinuationToken will be provided for a subsequent request.



=head2 NextContinuationToken => Str

The marker used to continue this inventory configuration listing. Use
the C<NextContinuationToken> from this response to continue the listing
in a subsequent request. The continuation token is an opaque value that
Amazon S3 understands.




=cut

