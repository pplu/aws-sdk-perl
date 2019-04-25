package Paws::EC2::TransitGatewayRouteTable;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DefaultAssociationRouteTable => (is => 'ro', isa => 'Bool', request_name => 'defaultAssociationRouteTable', traits => ['NameInRequest']);
  has DefaultPropagationRouteTable => (is => 'ro', isa => 'Bool', request_name => 'defaultPropagationRouteTable', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has TransitGatewayId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayId', traits => ['NameInRequest']);
  has TransitGatewayRouteTableId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayRouteTableId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayRouteTable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayRouteTable object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TransitGatewayRouteTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayRouteTable object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The creation time.


=head2 DefaultAssociationRouteTable => Bool

  Indicates whether this is the default association route table for the
transit gateway.


=head2 DefaultPropagationRouteTable => Bool

  Indicates whether this is the default propagation route table for the
transit gateway.


=head2 State => Str

  The state of the transit gateway route table.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the route table.


=head2 TransitGatewayId => Str

  The ID of the transit gateway.


=head2 TransitGatewayRouteTableId => Str

  The ID of the transit gateway route table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
