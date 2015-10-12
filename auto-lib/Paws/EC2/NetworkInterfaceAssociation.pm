package Paws::EC2::NetworkInterfaceAssociation;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', xmlname => 'allocationId', traits => ['Unwrapped']);
  has AssociationId => (is => 'ro', isa => 'Str', xmlname => 'associationId', traits => ['Unwrapped']);
  has IpOwnerId => (is => 'ro', isa => 'Str', xmlname => 'ipOwnerId', traits => ['Unwrapped']);
  has PublicDnsName => (is => 'ro', isa => 'Str', xmlname => 'publicDnsName', traits => ['Unwrapped']);
  has PublicIp => (is => 'ro', isa => 'Str', xmlname => 'publicIp', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkInterfaceAssociation

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkInterfaceAssociation object:

  $service_obj->Method(Att1 => { AllocationId => $value, ..., PublicIp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkInterfaceAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AllocationId

=head1 ATTRIBUTES

=head2 AllocationId => Str

  The allocation ID.

=head2 AssociationId => Str

  The association ID.

=head2 IpOwnerId => Str

  The ID of the Elastic IP address owner.

=head2 PublicDnsName => Str

  The public DNS name.

=head2 PublicIp => Str

  The address of the Elastic IP address bound to the network interface.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
