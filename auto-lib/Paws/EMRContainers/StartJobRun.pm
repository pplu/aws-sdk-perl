
package Paws::EMRContainers::StartJobRun;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has ConfigurationOverrides => (is => 'ro', isa => 'Paws::EMRContainers::ConfigurationOverrides', traits => ['NameInRequest'], request_name => 'configurationOverrides');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionRoleArn', required => 1);
  has JobDriver => (is => 'ro', isa => 'Paws::EMRContainers::JobDriver', traits => ['NameInRequest'], request_name => 'jobDriver', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ReleaseLabel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'releaseLabel', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EMRContainers::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VirtualClusterId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'virtualClusterId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartJobRun');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/virtualclusters/{virtualClusterId}/jobruns');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::StartJobRunResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::StartJobRun - Arguments for method StartJobRun on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartJobRun on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method StartJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartJobRun.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $StartJobRunResponse = $emr -containers->StartJobRun(
      ClientToken      => 'MyClientToken',
      ExecutionRoleArn => 'MyIAMRoleArn',
      JobDriver        => {
        SparkSubmitJobDriver => {
          EntryPoint          => 'MyEntryPointPath',    # min: 1, max: 256
          EntryPointArguments => [
            'MyEntryPointArgument', ...                 # min: 1, max: 10280
          ],                                            # OPTIONAL
          SparkSubmitParameters =>
            'MySparkSubmitParameters',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      ReleaseLabel           => 'MyReleaseLabel',
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
      Name => 'MyResourceNameString',    # OPTIONAL
      Tags => {
        'MyString128' =>
          'MyStringEmpty256',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn              = $StartJobRunResponse->Arn;
    my $Id               = $StartJobRunResponse->Id;
    my $Name             = $StartJobRunResponse->Name;
    my $VirtualClusterId = $StartJobRunResponse->VirtualClusterId;

    # Returns a L<Paws::EMRContainers::StartJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/StartJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

The client idempotency token of the job run request.



=head2 ConfigurationOverrides => L<Paws::EMRContainers::ConfigurationOverrides>

The configuration overrides for the job run.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The execution role ARN for the job run.



=head2 B<REQUIRED> JobDriver => L<Paws::EMRContainers::JobDriver>

The job driver for the job run.



=head2 Name => Str

The name of the job run.



=head2 B<REQUIRED> ReleaseLabel => Str

The Amazon EMR release version to use for the job run.



=head2 Tags => L<Paws::EMRContainers::TagMap>

The tags assigned to job runs.



=head2 B<REQUIRED> VirtualClusterId => Str

The virtual cluster ID for which the job run request is submitted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartJobRun in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

