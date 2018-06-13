
package Paws::DeviceFarm::UpdateVPCEConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has ServiceDnsName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceDnsName' );
  has VpceConfigurationDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpceConfigurationDescription' );
  has VpceConfigurationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpceConfigurationName' );
  has VpceServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpceServiceName' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVPCEConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::UpdateVPCEConfigurationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateVPCEConfiguration - Arguments for method UpdateVPCEConfiguration on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVPCEConfiguration on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method UpdateVPCEConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVPCEConfiguration.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $UpdateVPCEConfigurationResult = $devicefarm->UpdateVPCEConfiguration(
      Arn            => 'MyAmazonResourceName',
      ServiceDnsName => 'MyServiceDnsName',       # OPTIONAL
      VpceConfigurationDescription =>
        'MyVPCEConfigurationDescription',         # OPTIONAL
      VpceConfigurationName => 'MyVPCEConfigurationName',    # OPTIONAL
      VpceServiceName       => 'MyVPCEServiceName',          # OPTIONAL
    );

    # Results:
    my $VpceConfiguration = $UpdateVPCEConfigurationResult->VpceConfiguration;

    # Returns a L<Paws::DeviceFarm::UpdateVPCEConfigurationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/UpdateVPCEConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the VPC endpoint configuration you
want to update.



=head2 ServiceDnsName => Str

The DNS (domain) name used to connect to your private service in your
Amazon VPC. The DNS name must not already be in use on the Internet.



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

This class forms part of L<Paws>, documenting arguments for method UpdateVPCEConfiguration in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

