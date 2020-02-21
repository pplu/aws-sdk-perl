package Paws::Transfer::EndpointDetails;
  use Moose;
  has AddressAllocationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has VpcEndpointId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::EndpointDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::EndpointDetails object:

  $service_obj->Method(Att1 => { AddressAllocationIds => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::EndpointDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->AddressAllocationIds

=head1 DESCRIPTION

The virtual private cloud (VPC) endpoint settings that are configured
for your SFTP server. With a VPC endpoint, you can restrict access to
your SFTP server and resources only within your VPC. To control
incoming internet traffic, invoke the C<UpdateServer> API and attach an
Elastic IP to your server's endpoint.

=head1 ATTRIBUTES


=head2 AddressAllocationIds => ArrayRef[Str|Undef]

  A list of address allocation IDs that are required to attach an Elastic
IP address to your SFTP server's endpoint. This is only valid in the
C<UpdateServer> API.

This property can only be use when C<EndpointType> is set to C<VPC>.


=head2 SubnetIds => ArrayRef[Str|Undef]

  A list of subnet IDs that are required to host your SFTP server
endpoint in your VPC.


=head2 VpcEndpointId => Str

  The ID of the VPC endpoint.


=head2 VpcId => Str

  The VPC ID of the virtual private cloud in which the SFTP server's
endpoint will be hosted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

