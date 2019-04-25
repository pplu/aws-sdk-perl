
package Paws::S3Control::GetPublicAccessBlockOutput;
  use Moose;
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::S3Control::PublicAccessBlockConfiguration');

  use MooseX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'PublicAccessBlockConfiguration');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetPublicAccessBlockOutput

=head1 ATTRIBUTES


=head2 PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>

The Public Access Block configuration currently in effect for this
Amazon Web Services account.




=cut

