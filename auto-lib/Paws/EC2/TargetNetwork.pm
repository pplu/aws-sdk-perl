package Paws::EC2::TargetNetwork;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str', request_name => 'associationId', traits => ['NameInRequest']);
  has ClientVpnEndpointId => (is => 'ro', isa => 'Str', request_name => 'clientVpnEndpointId', traits => ['NameInRequest']);
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroups', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::AssociationStatus', request_name => 'status', traits => ['NameInRequest']);
  has TargetNetworkId => (is => 'ro', isa => 'Str', request_name => 'targetNetworkId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TargetNetwork

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TargetNetwork object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TargetNetwork object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The ID of the association.


=head2 ClientVpnEndpointId => Str

  The ID of the Client VPN endpoint with which the target network is
associated.


=head2 SecurityGroups => ArrayRef[Str|Undef]

  The IDs of the security groups applied to the target network
association.


=head2 Status => L<Paws::EC2::AssociationStatus>

  The current state of the target network association.


=head2 TargetNetworkId => Str

  The ID of the subnet specified as the target network.


=head2 VpcId => Str

  The ID of the VPC in which the target network (subnet) is located.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
