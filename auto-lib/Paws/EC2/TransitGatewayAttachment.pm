package Paws::EC2::TransitGatewayAttachment;
  use Moose;
  has Association => (is => 'ro', isa => 'Paws::EC2::TransitGatewayAttachmentAssociation', request_name => 'association', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceOwnerId => (is => 'ro', isa => 'Str', request_name => 'resourceOwnerId', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAttachmentId', traits => ['NameInRequest']);
  has TransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayId', traits => ['NameInRequest']);
  has TransitGatewayOwnerId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayOwnerId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayAttachment object:

  $service_obj->Method(Att1 => { Association => $value, ..., TransitGatewayOwnerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->Association

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Association => L<Paws::EC2::TransitGatewayAttachmentAssociation>

  The association.


=head2 CreationTime => Str

  The creation time.


=head2 ResourceId => Str

  The ID of the resource.


=head2 ResourceOwnerId => Str

  The ID of the AWS account that owns the resource.


=head2 ResourceType => Str

  The resource type.


=head2 State => Str

  The attachment state.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  The tags for the attachment.


=head2 TransitGatewayAttachmentId => Str

  The ID of the attachment.


=head2 TransitGatewayId => Str

  The ID of the transit gateway.


=head2 TransitGatewayOwnerId => Str

  The ID of the AWS account that owns the transit gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
