package Paws::EC2::InternetGateway;
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InternetGatewayAttachment]', request_name => 'attachmentSet', traits => ['NameInRequest']);
  has InternetGatewayId => (is => 'ro', isa => 'Str', request_name => 'internetGatewayId', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InternetGateway

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InternetGateway object:

  $service_obj->Method(Att1 => { Attachments => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InternetGateway object:

  $result = $service_obj->Method(...);
  $result->Att1->Attachments

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Attachments => ArrayRef[L<Paws::EC2::InternetGatewayAttachment>]

  Any VPCs attached to the internet gateway.


=head2 InternetGatewayId => Str

  The ID of the internet gateway.


=head2 OwnerId => Str

  The ID of the AWS account that owns the internet gateway.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the internet gateway.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
