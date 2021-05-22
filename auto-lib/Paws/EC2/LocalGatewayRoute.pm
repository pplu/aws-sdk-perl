package Paws::EC2::LocalGatewayRoute;
  use Moose;
  has DestinationCidrBlock => (is => 'ro', isa => 'Str', request_name => 'destinationCidrBlock', traits => ['NameInRequest']);
  has LocalGatewayRouteTableArn => (is => 'ro', isa => 'Str', request_name => 'localGatewayRouteTableArn', traits => ['NameInRequest']);
  has LocalGatewayRouteTableId => (is => 'ro', isa => 'Str', request_name => 'localGatewayRouteTableId', traits => ['NameInRequest']);
  has LocalGatewayVirtualInterfaceGroupId => (is => 'ro', isa => 'Str', request_name => 'localGatewayVirtualInterfaceGroupId', traits => ['NameInRequest']);
  has OwnerId => (is => 'ro', isa => 'Str', request_name => 'ownerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LocalGatewayRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LocalGatewayRoute object:

  $service_obj->Method(Att1 => { DestinationCidrBlock => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LocalGatewayRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationCidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DestinationCidrBlock => Str

The CIDR block used for destination matches.


=head2 LocalGatewayRouteTableArn => Str

The Amazon Resource Name (ARN) of the local gateway route table.


=head2 LocalGatewayRouteTableId => Str

The ID of the local gateway route table.


=head2 LocalGatewayVirtualInterfaceGroupId => Str

The ID of the virtual interface group.


=head2 OwnerId => Str

The AWS account ID that owns the local gateway route.


=head2 State => Str

The state of the route.


=head2 Type => Str

The route type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
