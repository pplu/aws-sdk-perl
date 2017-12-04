package Paws::EC2::VpcEndpoint;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str', request_name => 'creationTimestamp', traits => ['NameInRequest']);
  has PolicyDocument => (is => 'ro', isa => 'Str', request_name => 'policyDocument', traits => ['NameInRequest']);
  has RouteTableIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'routeTableIdSet', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has VpcEndpointId => (is => 'ro', isa => 'Str', request_name => 'vpcEndpointId', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcEndpoint object:

  $service_obj->Method(Att1 => { CreationTimestamp => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimestamp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

  The date and time the VPC endpoint was created.


=head2 PolicyDocument => Str

  The policy document associated with the endpoint.


=head2 RouteTableIds => ArrayRef[Str|Undef]

  One or more route tables associated with the endpoint.


=head2 ServiceName => Str

  The name of the AWS service to which the endpoint is associated.


=head2 State => Str

  The state of the VPC endpoint.


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint.


=head2 VpcId => Str

  The ID of the VPC to which the endpoint is associated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
