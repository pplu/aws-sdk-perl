
package Paws::S3::GetBucketEncryptionOutput;
  use Moose;
  has ServerSideEncryptionConfiguration => (is => 'ro', isa => 'Paws::S3::ServerSideEncryptionConfiguration');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'ServerSideEncryptionConfiguration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketEncryptionOutput

=head1 ATTRIBUTES


=head2 ServerSideEncryptionConfiguration => L<Paws::S3::ServerSideEncryptionConfiguration>






=cut

