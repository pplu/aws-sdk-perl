
package Paws::S3Control::GetBucketTaggingResult;
  use Moose;
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::S3Tag]', required => 1);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetBucketTaggingResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[L<Paws::S3Control::S3Tag>]

The tags set of the Outposts bucket.




=cut

