
package Paws::Lightsail::CreateContainerService;
  use Moose;
  has Deployment => (is => 'ro', isa => 'Paws::Lightsail::ContainerServiceDeploymentRequest', traits => ['NameInRequest'], request_name => 'deployment' );
  has Power => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'power' , required => 1);
  has PublicDomainNames => (is => 'ro', isa => 'Paws::Lightsail::ContainerServicePublicDomains', traits => ['NameInRequest'], request_name => 'publicDomainNames' );
  has Scale => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'scale' , required => 1);
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContainerService');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateContainerServiceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateContainerService - Arguments for method CreateContainerService on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContainerService on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateContainerService.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContainerService.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateContainerServiceResult = $lightsail->CreateContainerService(
      Power       => 'nano',
      Scale       => 1,
      ServiceName => 'MyContainerServiceName',
      Deployment  => {
        Containers => {
          'MyContainerName' => {
            Command     => [ 'Mystring', ... ],              # OPTIONAL
            Environment => { 'Mystring' => 'Mystring', },    # OPTIONAL
            Image       => 'Mystring',
            Ports       => {
              'Mystring' => 'HTTP',    # , value: values: HTTP, HTTPS, TCP, UDP
            },    # OPTIONAL
          },    # key: min: 1, max: 53
        },    # OPTIONAL
        PublicEndpoint => {
          ContainerName => 'Mystring',
          ContainerPort => 1,
          HealthCheck   => {
            HealthyThreshold   => 1,
            IntervalSeconds    => 1,
            Path               => 'Mystring',
            SuccessCodes       => 'Mystring',
            TimeoutSeconds     => 1,
            UnhealthyThreshold => 1,
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      PublicDomainNames => { 'Mystring' => [ 'Mystring', ... ], },    # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',                                        # OPTIONAL
          Value => 'MyTagValue',                                      # OPTIONAL
        },
        ...
      ],                                                              # OPTIONAL
    );

    # Results:
    my $ContainerService = $CreateContainerServiceResult->ContainerService;

    # Returns a L<Paws::Lightsail::CreateContainerServiceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateContainerService>

=head1 ATTRIBUTES


=head2 Deployment => L<Paws::Lightsail::ContainerServiceDeploymentRequest>

An object that describes a deployment for the container service.

A deployment specifies the containers that will be launched on the
container service and their settings, such as the ports to open, the
environment variables to apply, and the launch command to run. It also
specifies the container that will serve as the public endpoint of the
deployment and its settings, such as the HTTP or HTTPS port to use, and
the health check configuration.



=head2 B<REQUIRED> Power => Str

The power specification for the container service.

The power specifies the amount of memory, vCPUs, and base monthly cost
of each node of the container service. The C<power> and C<scale> of a
container service makes up its configured capacity. To determine the
monthly price of your container service, multiply the base price of the
C<power> with the C<scale> (the number of nodes) of the service.

Use the C<GetContainerServicePowers> action to get a list of power
options that you can specify using this parameter, and their base
monthly cost.

Valid values are: C<"nano">, C<"micro">, C<"small">, C<"medium">, C<"large">, C<"xlarge">

=head2 PublicDomainNames => L<Paws::Lightsail::ContainerServicePublicDomains>

The public domain names to use with the container service, such as
C<example.com> and C<www.example.com>.

You can specify up to four public domain names for a container service.
The domain names that you specify are used when you create a deployment
with a container configured as the public endpoint of your container
service.

If you don't specify public domain names, then you can use the default
domain of the container service.

You must create and validate an SSL/TLS certificate before you can use
public domain names with your container service. Use the
C<CreateCertificate> action to create a certificate for the public
domain names you want to use with your container service.

You can specify public domain names using a string to array map as
shown in the example later on this page.



=head2 B<REQUIRED> Scale => Int

The scale specification for the container service.

The scale specifies the allocated compute nodes of the container
service. The C<power> and C<scale> of a container service makes up its
configured capacity. To determine the monthly price of your container
service, multiply the base price of the C<power> with the C<scale> (the
number of nodes) of the service.



=head2 B<REQUIRED> ServiceName => Str

The name for the container service.

The name that you specify for your container service will make up part
of its default domain. The default domain of a container service is
typically
C<https://E<lt>ServiceNameE<gt>.E<lt>RandomGUIDE<gt>.E<lt>AWSRegionE<gt>.cs.amazonlightsail.com>.
If the name of your container service is C<container-service-1>, and
it's located in the US East (Ohio) AWS region (C<us-east-2>), then the
domain for your container service will be like the following example:
C<https://container-service-1.ur4EXAMPLE2uq.us-east-2.cs.amazonlightsail.com>

The following are the requirements for container service names:

=over

=item *

Must be unique within each AWS Region in your Lightsail account.

=item *

Must contain 1 to 63 characters.

=item *

Must contain only alphanumeric characters and hyphens.

=item *

A hyphen (-) can separate words but cannot be at the start or end of
the name.

=back




=head2 Tags => ArrayRef[L<Paws::Lightsail::Tag>]

The tag keys and optional values for the container service.

For more information about tags in Lightsail, see the Lightsail Dev
Guide
(https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContainerService in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

