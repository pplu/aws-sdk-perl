package Paws::EC2::CoipPool;
  use Moose;
  has LocalGatewayRouteTableId => (is => 'ro', isa => 'Str', request_name => 'localGatewayRouteTableId', traits => ['NameInRequest']);
  has PoolCidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'poolCidrSet', traits => ['NameInRequest']);
  has PoolId => (is => 'ro', isa => 'Str', request_name => 'poolId', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CoipPool

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CoipPool object:

  $service_obj->Method(Att1 => { LocalGatewayRouteTableId => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CoipPool object:

  $result = $service_obj->Method(...);
  $result->Att1->LocalGatewayRouteTableId

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LocalGatewayRouteTableId => Str

The ID of the local gateway route table.


=head2 PoolCidrs => ArrayRef[Str|Undef]

The address ranges of the address pool.


=head2 PoolId => Str

The ID of the address pool.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
