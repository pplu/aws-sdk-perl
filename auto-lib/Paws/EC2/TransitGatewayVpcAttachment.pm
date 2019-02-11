package Paws::EC2::TransitGatewayVpcAttachment;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Options => (is => 'ro', isa => 'Paws::EC2::TransitGatewayVpcAttachmentOptions', request_name => 'options', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'subnetIds', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransitGatewayAttachmentId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayAttachmentId', traits => ['NameInRequest']);
  has TransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
  has VpcOwnerId => (is => 'ro', isa => 'Str', request_name => 'vpcOwnerId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayVpcAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayVpcAttachment object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., VpcOwnerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayVpcAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The creation time.


=head2 Options => L<Paws::EC2::TransitGatewayVpcAttachmentOptions>

  The VPC attachment options.


=head2 State => Str

  The state of the VPC attachment.


=head2 SubnetIds => ArrayRef[Str|Undef]

  The IDs of the subnets.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  The tags for the VPC attachment.


=head2 TransitGatewayAttachmentId => Str

  The ID of the attachment.


=head2 TransitGatewayId => Str

  The ID of the transit gateway.


=head2 VpcId => Str

  The ID of the VPC.


=head2 VpcOwnerId => Str

  The ID of the AWS account that owns the VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
