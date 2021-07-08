package Paws::EC2::TransitGatewayPeeringAttachment;
  use Moose;
  has AccepterTgwInfo => (is => 'ro', isa => 'Paws::EC2::PeeringTgwInfo', request_name => 'accepterTgwInfo', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has RequesterTgwInfo => (is => 'ro', isa => 'Paws::EC2::PeeringTgwInfo', request_name => 'requesterTgwInfo', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::PeeringAttachmentStatus', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAttachmentId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayPeeringAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayPeeringAttachment object:

  $service_obj->Method(Att1 => { AccepterTgwInfo => $value, ..., TransitGatewayAttachmentId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayPeeringAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->AccepterTgwInfo

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccepterTgwInfo => L<Paws::EC2::PeeringTgwInfo>

Information about the accepter transit gateway.


=head2 CreationTime => Str

The time the transit gateway peering attachment was created.


=head2 RequesterTgwInfo => L<Paws::EC2::PeeringTgwInfo>

Information about the requester transit gateway.


=head2 State => Str

The state of the transit gateway peering attachment. Note that the
C<initiating> state has been deprecated.


=head2 Status => L<Paws::EC2::PeeringAttachmentStatus>

The status of the transit gateway peering attachment.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags for the transit gateway peering attachment.


=head2 TransitGatewayAttachmentId => Str

The ID of the transit gateway peering attachment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
