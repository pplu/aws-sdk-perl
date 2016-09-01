
package Paws::S3::GetBucketTaggingOutput;
  use Moose;
  has TagSet => (is => 'ro', isa => 'ArrayRef[Paws::S3::Tag]', traits => ['Unwrapped'], xmlname => 'Tag', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketTaggingOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> TagSet => ArrayRef[L<Paws::S3::Tag>]






=cut

