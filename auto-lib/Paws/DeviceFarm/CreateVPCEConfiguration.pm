
package Paws::DeviceFarm::CreateVPCEConfiguration;
  use Moose;
  has ServiceDnsName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceDnsName' , required => 1);
  has VpceConfigurationDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpceConfigurationDescription' );
  has VpceConfigurationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpceConfigurationName' , required => 1);
  has VpceServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpceServiceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVPCEConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::CreateVPCEConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateVPCEConfiguration - Arguments for method CreateVPCEConfiguration on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVPCEConfiguration on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method CreateVPCEConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVPCEConfiguration.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $CreateVPCEConfigurationResult = $devicefarm->CreateVPCEConfiguration(
      ServiceDnsName        => 'MyServiceDnsName',
      VpceConfigurationName => 'MyVPCEConfigurationName',
      VpceServiceName       => 'MyVPCEServiceName',
      VpceConfigurationDescription =>
        'MyVPCEConfigurationDescription',    # OPTIONAL
    );

    # Results:
    my $VpceConfiguration = $CreateVPCEConfigurationResult->VpceConfiguration;

    # Returns a L<Paws::DeviceFarm::CreateVPCEConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/CreateVPCEConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceDnsName => Str

The DNS name of the service running in your VPC that you want Device
Farm to test.



=head2 VpceConfigurationDescription => Str

An optional description, providing more details about your VPC endpoint
configuration.



=head2 B<REQUIRED> VpceConfigurationName => Str

The friendly name you give to your VPC endpoint configuration, to
manage your configurations more easily.



=head2 B<REQUIRED> VpceServiceName => Str

The name of the VPC endpoint service running inside your AWS account
that you want Device Farm to test.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVPCEConfiguration in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

