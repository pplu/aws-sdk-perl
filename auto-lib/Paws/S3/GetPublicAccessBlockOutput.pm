
package Paws::S3::GetPublicAccessBlockOutput;
  use Moose;
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::S3::PublicAccessBlockConfiguration');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicAccessBlockConfiguration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetPublicAccessBlockOutput

=head1 ATTRIBUTES


=head2 PublicAccessBlockConfiguration => L<Paws::S3::PublicAccessBlockConfiguration>

The C<PublicAccessBlock> configuration currently in effect for this
Amazon S3 bucket.




=cut

