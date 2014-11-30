
package Paws::EC2::AssociateAddressResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AssociationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'associationId');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateAddressResult

=head1 ATTRIBUTES

=head2 AssociationId => Str

  

[EC2-VPC] The ID that represents the association of the Elastic IP
address with an instance.











=cut

