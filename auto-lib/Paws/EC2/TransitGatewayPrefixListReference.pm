package Paws::EC2::TransitGatewayPrefixListReference;
  use Moose;
  has Blackhole => (is => 'ro', isa => 'Bool', request_name => 'blackhole', traits => ['NameInRequest']);
  has PrefixListId => (is => 'ro', isa => 'Str', request_name => 'prefixListId', traits => ['NameInRequest']);
  has PrefixListOwnerId => (is => 'ro', isa => 'Str', request_name => 'prefixListOwnerId', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has TransitGatewayAttachment => (is => 'ro', isa => 'Paws::EC2::TransitGatewayPrefixListAttachment', request_name => 'transitGatewayAttachment', traits => ['NameInRequest']);
  has TransitGatewayRouteTableId => (is => 'ro', isa => 'Str', request_name => 'transitGatewayRouteTableId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::TransitGatewayPrefixListReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::TransitGatewayPrefixListReference object:

  $service_obj->Method(Att1 => { Blackhole => $value, ..., TransitGatewayRouteTableId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::TransitGatewayPrefixListReference object:

  $result = $service_obj->Method(...);
  $result->Att1->Blackhole

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Blackhole => Bool

Indicates whether traffic that matches this route is dropped.


=head2 PrefixListId => Str

The ID of the prefix list.


=head2 PrefixListOwnerId => Str

The ID of the prefix list owner.


=head2 State => Str

The state of the prefix list reference.


=head2 TransitGatewayAttachment => L<Paws::EC2::TransitGatewayPrefixListAttachment>

Information about the transit gateway attachment.


=head2 TransitGatewayRouteTableId => Str

The ID of the transit gateway route table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
