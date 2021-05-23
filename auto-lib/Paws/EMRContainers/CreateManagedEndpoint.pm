
package Paws::EMRContainers::CreateManagedEndpoint;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateArn', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ConfigurationOverrides => (is => 'ro', isa => 'Paws::EMRContainers::ConfigurationOverrides', traits => ['NameInRequest'], request_name => 'configurationOverrides');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRoleArn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ReleaseLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseLabel', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EMRContainers::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateManagedEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::CreateManagedEndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::CreateManagedEndpoint - Arguments for method CreateManagedEndpoint on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateManagedEndpoint on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method CreateManagedEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateManagedEndpoint.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $CreateManagedEndpointResponse = $emr -containers->CreateManagedEndpoint(
      CertificateArn         => 'MyACMCertArn',
      ClientToken            => 'MyClientToken',
      ExecutionRoleArn       => 'MyIAMRoleArn',
      Name                   => 'MyResourceNameString',
      ReleaseLabel           => 'MyReleaseLabel',
      Type                   => 'MyEndpointType',
      VirtualClusterId       => 'MyResourceIdString',
      ConfigurationOverrides => {
        ApplicationConfiguration => [
          {
            Classification => 'MyString1024',        # min: 1, max: 1024
            Configurations => <ConfigurationList>,
            Properties     => {
              'MyString1024' => 'MyString1024'
              ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
            },    # max: 100; OPTIONAL
          },
          ...
        ],        # max: 100; OPTIONAL
        MonitoringConfiguration => {
          CloudWatchMonitoringConfiguration => {
            LogGroupName => 'MyLogGroupName',    # min: 1, max: 512
            LogStreamNamePrefix => 'MyString256',   # min: 1, max: 256; OPTIONAL
          },    # OPTIONAL
          PersistentAppUI => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          S3MonitoringConfiguration => {
            LogUri => 'MyUriString',       # min: 1, max: 10280

          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyString128' =>
          'MyStringEmpty256',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateManagedEndpointResponse->Arn;
    my $Id               = $CreateManagedEndpointResponse->Id;
    my $Name             = $CreateManagedEndpointResponse->Name;
    my $VirtualClusterId = $CreateManagedEndpointResponse->VirtualClusterId;

    # Returns a L<Paws::EMRContainers::CreateManagedEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/CreateManagedEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateArn => Str

The certificate ARN of the managed endpoint.



=head2 B<REQUIRED> ClientToken => Str

The client idempotency token for this create call.



=head2 ConfigurationOverrides => L<Paws::EMRContainers::ConfigurationOverrides>

The configuration settings that will be used to override existing
configurations.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The ARN of the execution role.



=head2 B<REQUIRED> Name => Str

The name of the managed endpoint.



=head2 B<REQUIRED> ReleaseLabel => Str

The Amazon EMR release version.



=head2 Tags => L<Paws::EMRContainers::TagMap>

The tags of the managed endpoint.



=head2 B<REQUIRED> Type => Str

The type of the managed endpoint.



=head2 B<REQUIRED> VirtualClusterId => Str

The ID of the virtual cluster for which a managed endpoint is created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateManagedEndpoint in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

