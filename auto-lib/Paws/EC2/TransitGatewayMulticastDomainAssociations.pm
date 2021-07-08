package Paws::EC2::TransitGatewayMulticastDomainAssociations;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceOwnerId => (is => 'ro', isa => 'Str', request_name => 'resourceOwnerId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has Subnets => (is => 'ro', isa => 'ArrayRef[Paws::EC2::SubnetAssociation]', request_name => 'subnets', traits => ['NameInRequest']);
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAttachmentId', traits => ['NameInRequest']);
  has TransitGatewayMulticastDomainId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayMulticastDomainId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayMulticastDomainAssociations

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayMulticastDomainAssociations object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., TransitGatewayMulticastDomainId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayMulticastDomainAssociations object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ResourceId => Str

The ID of the resource.


=head2 ResourceOwnerId => Str

The ID of the AWS account that owns the resource.


=head2 ResourceType => Str

The type of resource, for example a VPC attachment.


=head2 Subnets => ArrayRef[L<Paws::EC2::SubnetAssociation>]

The subnets associated with the multicast domain.


=head2 TransitGatewayAttachmentId => Str

The ID of the transit gateway attachment.


=head2 TransitGatewayMulticastDomainId => Str

The ID of the transit gateway multicast domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
