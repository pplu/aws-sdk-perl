
package Paws::S3Control::ListRegionalBucketsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RegionalBucketList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::RegionalBucket]', request_name => 'RegionalBucket', traits => ['NameInRequest']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListRegionalBucketsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

C<NextToken> is sent when C<isTruncated> is true, which means there are
more buckets that can be listed. The next list requests to Amazon S3
can be continued with this C<NextToken>. C<NextToken> is obfuscated and
is not a real key.



=head2 RegionalBucketList => ArrayRef[L<Paws::S3Control::RegionalBucket>]






=cut

