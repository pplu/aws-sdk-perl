
package Paws::S3::ListBucketsOutput;
  use Moose;
  has Buckets => (is => 'ro', isa => 'ArrayRef[Paws::S3::Bucket]');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListBucketsOutput

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[L<Paws::S3::Bucket>]





=head2 Owner => L<Paws::S3::Owner>






=cut

