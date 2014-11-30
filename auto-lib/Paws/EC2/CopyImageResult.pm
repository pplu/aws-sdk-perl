
package Paws::EC2::CopyImageResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CopyImageResult

=head1 ATTRIBUTES

=head2 ImageId => Str

  

The ID of the new AMI.











=cut

