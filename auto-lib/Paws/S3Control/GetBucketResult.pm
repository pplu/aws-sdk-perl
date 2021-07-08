
package Paws::S3Control::GetBucketResult;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has PublicAccessBlockEnabled => (is => 'ro', isa => 'Bool');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetBucketResult

=head1 ATTRIBUTES


=head2 Bucket => Str

The Outposts bucket requested.



=head2 CreationDate => Str

The creation date of the Outposts bucket.



=head2 PublicAccessBlockEnabled => Bool






=cut

