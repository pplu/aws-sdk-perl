package Paws::EC2::TransitGatewayMulticastGroup;
  use Moose;
  has GroupIpAddress => (is => 'ro', isa => 'Str', request_name => 'groupIpAddress', traits => ['NameInRequest']);
  has GroupMember => (is => 'ro', isa => 'Bool', request_name => 'groupMember', traits => ['NameInRequest']);
  has GroupSource => (is => 'ro', isa => 'Bool', request_name => 'groupSource', traits => ['NameInRequest']);
  has MemberType => (is => 'ro', isa => 'Str', request_name => 'memberType', traits => ['NameInRequest']);
  has NetworkInterfaceId => (is => 'ro', isa => 'Str', request_name => 'networkInterfaceId', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceOwnerId => (is => 'ro', isa => 'Str', request_name => 'resourceOwnerId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SourceType => (is => 'ro', isa => 'Str', request_name => 'sourceType', traits => ['NameInRequest']);
  has SubnetId => (is => 'ro', isa => 'Str', request_name => 'subnetId', traits => ['NameInRequest']);
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAttachmentId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayMulticastGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayMulticastGroup object:

  $service_obj->Method(Att1 => { GroupIpAddress => $value, ..., TransitGatewayAttachmentId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayMulticastGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupIpAddress

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 GroupIpAddress => Str

The IP address assigned to the transit gateway multicast group.


=head2 GroupMember => Bool

Indicates that the resource is a transit gateway multicast group
member.


=head2 GroupSource => Bool

Indicates that the resource is a transit gateway multicast group
member.


=head2 MemberType => Str

The member type (for example, C<static>).


=head2 NetworkInterfaceId => Str

The ID of the transit gateway attachment.


=head2 ResourceId => Str

The ID of the resource.


=head2 ResourceOwnerId => Str

The ID of the AWS account that owns the transit gateway multicast
domain group resource.


=head2 ResourceType => Str

The type of resource, for example a VPC attachment.


=head2 SourceType => Str

The source type.


=head2 SubnetId => Str

The ID of the subnet.


=head2 TransitGatewayAttachmentId => Str

The ID of the transit gateway attachment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
