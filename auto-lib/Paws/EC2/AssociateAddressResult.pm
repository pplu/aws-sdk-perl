
package Paws::EC2::AssociateAddressResult;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateAddressResult

=head1 ATTRIBUTES


=head2 AssociationId => Str

[EC2-VPC] The ID that represents the association of the Elastic IP
address with an instance.


=head2 _request_id => Str


=cut

