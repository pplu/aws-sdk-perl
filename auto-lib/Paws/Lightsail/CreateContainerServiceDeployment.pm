
package Paws::Lightsail::CreateContainerServiceDeployment;
  use Moose;
  has Containers => (is => 'ro', isa => 'Paws::Lightsail::ContainerMap', traits => ['NameInRequest'], request_name => 'containers' );
  has PublicEndpoint => (is => 'ro', isa => 'Paws::Lightsail::EndpointRequest', traits => ['NameInRequest'], request_name => 'publicEndpoint' );
  has ServiceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContainerServiceDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateContainerServiceDeploymentResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateContainerServiceDeployment - Arguments for method CreateContainerServiceDeployment on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContainerServiceDeployment on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method CreateContainerServiceDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContainerServiceDeployment.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $CreateContainerServiceDeploymentResult =
      $lightsail->CreateContainerServiceDeployment(
      ServiceName => 'MyContainerServiceName',
      Containers  => {
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
      );

    # Results:
    my $ContainerService =
      $CreateContainerServiceDeploymentResult->ContainerService;

  # Returns a L<Paws::Lightsail::CreateContainerServiceDeploymentResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/CreateContainerServiceDeployment>

=head1 ATTRIBUTES


=head2 Containers => L<Paws::Lightsail::ContainerMap>

An object that describes the settings of the containers that will be
launched on the container service.



=head2 PublicEndpoint => L<Paws::Lightsail::EndpointRequest>

An object that describes the settings of the public endpoint for the
container service.



=head2 B<REQUIRED> ServiceName => Str

The name of the container service for which to create the deployment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContainerServiceDeployment in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

