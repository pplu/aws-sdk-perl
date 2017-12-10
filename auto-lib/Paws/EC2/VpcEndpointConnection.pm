package Paws::EC2::VpcEndpointConnection;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str', request_name => 'creationTimestamp', traits => ['NameInRequest']);
  has ServiceId => (is => 'ro', isa => 'Str', request_name => 'serviceId', traits => ['NameInRequest']);
  has VpcEndpointId => (is => 'ro', isa => 'Str', request_name => 'vpcEndpointId', traits => ['NameInRequest']);
  has VpcEndpointOwner => (is => 'ro', isa => 'Str', request_name => 'vpcEndpointOwner', traits => ['NameInRequest']);
  has VpcEndpointState => (is => 'ro', isa => 'Str', request_name => 'vpcEndpointState', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcEndpointConnection

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcEndpointConnection object:

  $service_obj->Method(Att1 => { CreationTimestamp => $value, ..., VpcEndpointState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcEndpointConnection object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTimestamp

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

  The date and time the VPC endpoint was created.


=head2 ServiceId => Str

  The ID of the service to which the endpoint is connected.


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint.


=head2 VpcEndpointOwner => Str

  The AWS account ID of the owner of the VPC endpoint.


=head2 VpcEndpointState => Str

  The state of the VPC endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
