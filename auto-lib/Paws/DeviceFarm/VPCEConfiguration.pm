package Paws::DeviceFarm::VPCEConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has ServiceDnsName => (is => 'ro', isa => 'Str', request_name => 'serviceDnsName', traits => ['NameInRequest']);
  has VpceConfigurationDescription => (is => 'ro', isa => 'Str', request_name => 'vpceConfigurationDescription', traits => ['NameInRequest']);
  has VpceConfigurationName => (is => 'ro', isa => 'Str', request_name => 'vpceConfigurationName', traits => ['NameInRequest']);
  has VpceServiceName => (is => 'ro', isa => 'Str', request_name => 'vpceServiceName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::VPCEConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::VPCEConfiguration object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpceServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::VPCEConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents an Amazon Virtual Private Cloud (VPC) endpoint
configuration.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the VPC endpoint configuration.


=head2 ServiceDnsName => Str

  The DNS name that maps to the private IP address of the service you
want to access.


=head2 VpceConfigurationDescription => Str

  An optional description, providing more details about your VPC endpoint
configuration.


=head2 VpceConfigurationName => Str

  The friendly name you give to your VPC endpoint configuration, to
manage your configurations more easily.


=head2 VpceServiceName => Str

  The name of the VPC endpoint service running inside your AWS account
that you want Device Farm to test.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

