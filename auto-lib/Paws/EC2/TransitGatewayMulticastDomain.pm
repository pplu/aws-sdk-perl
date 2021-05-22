package Paws::EC2::TransitGatewayMulticastDomain;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Options => (is => 'ro', isa => 'Paws::EC2::TransitGatewayMulticastDomainOptions', request_name => 'options', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayId', traits => ['NameInRequest']);
  has TransitGatewayMulticastDomainArn => (is => 'ro', isa => 'Str', request_name => 'transitGatewayMulticastDomainArn', traits => ['NameInRequest']);
  has TransitGatewayMulticastDomainId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayMulticastDomainId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayMulticastDomain

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayMulticastDomain object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TransitGatewayMulticastDomainId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayMulticastDomain object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

The time the transit gateway multicast domain was created.


=head2 Options => L<Paws::EC2::TransitGatewayMulticastDomainOptions>

The options for the transit gateway multicast domain.


=head2 OwnerId => Str

The ID of the AWS account that owns the transit gateway multiicast
domain.


=head2 State => Str

The state of the transit gateway multicast domain.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags for the transit gateway multicast domain.


=head2 TransitGatewayId => Str

The ID of the transit gateway.


=head2 TransitGatewayMulticastDomainArn => Str

The Amazon Resource Name (ARN) of the transit gateway multicast domain.


=head2 TransitGatewayMulticastDomainId => Str

The ID of the transit gateway multicast domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
