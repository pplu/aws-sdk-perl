
package Paws::S3Control::GetPublicAccessBlockOutput;
  use Moose;
  has PublicAccessBlockConfiguration => (is => 'ro', isa => 'Paws::S3Control::PublicAccessBlockConfiguration', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetPublicAccessBlockOutput

=head1 ATTRIBUTES


=head2 PublicAccessBlockConfiguration => L<Paws::S3Control::PublicAccessBlockConfiguration>

The C<PublicAccessBlock> configuration currently in effect for this
Amazon Web Services account.




=cut

