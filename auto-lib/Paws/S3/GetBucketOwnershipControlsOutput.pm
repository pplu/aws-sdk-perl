
package Paws::S3::GetBucketOwnershipControlsOutput;
  use Moose;
  has OwnershipControls => (is => 'ro', isa => 'Paws::S3::OwnershipControls', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketOwnershipControlsOutput

=head1 ATTRIBUTES


=head2 OwnershipControls => L<Paws::S3::OwnershipControls>

The C<OwnershipControls> (BucketOwnerPreferred or ObjectWriter)
currently in effect for this Amazon S3 bucket.




=cut

