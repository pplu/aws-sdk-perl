
package Paws::MWAA::UpdateEnvironment;
  use Moose;
  has AirflowConfigurationOptions => (is => 'ro', isa => 'Paws::MWAA::SyntheticUpdateEnvironmentInputAirflowConfigurationOptions');
  has AirflowVersion => (is => 'ro', isa => 'Str');
  has DagS3Path => (is => 'ro', isa => 'Str');
  has EnvironmentClass => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::MWAA::LoggingConfigurationInput');
  has MaxWorkers => (is => 'ro', isa => 'Int');
  has MinWorkers => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::MWAA::UpdateNetworkConfigurationInput');
  has PluginsS3ObjectVersion => (is => 'ro', isa => 'Str');
  has PluginsS3Path => (is => 'ro', isa => 'Str');
  has RequirementsS3ObjectVersion => (is => 'ro', isa => 'Str');
  has RequirementsS3Path => (is => 'ro', isa => 'Str');
  has Schedulers => (is => 'ro', isa => 'Int');
  has SourceBucketArn => (is => 'ro', isa => 'Str');
  has WebserverAccessMode => (is => 'ro', isa => 'Str');
  has WeeklyMaintenanceWindowStart => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::UpdateEnvironmentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::UpdateEnvironment - Arguments for method UpdateEnvironment on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateEnvironment on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method UpdateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateEnvironment.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $UpdateEnvironmentOutput = $airflow->UpdateEnvironment(
      Name                        => 'MyEnvironmentName',
      AirflowConfigurationOptions => {
        'MyConfigKey' =>
          'MyConfigValue',    # key: min: 1, max: 64, value: min: 1, max: 256
      },    # OPTIONAL
      AirflowVersion       => 'MyAirflowVersion',      # OPTIONAL
      DagS3Path            => 'MyRelativePath',        # OPTIONAL
      EnvironmentClass     => 'MyEnvironmentClass',    # OPTIONAL
      ExecutionRoleArn     => 'MyIamRoleArn',          # OPTIONAL
      LoggingConfiguration => {
        DagProcessingLogs => {
          Enabled  => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        SchedulerLogs => {
          Enabled  => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        TaskLogs => {
          Enabled  => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        WebserverLogs => {
          Enabled  => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        WorkerLogs => {
          Enabled  => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
      },    # OPTIONAL
      MaxWorkers           => 1,    # OPTIONAL
      MinWorkers           => 1,    # OPTIONAL
      NetworkConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # min: 1, max: 1024
        ],    # min: 1, max: 5

      },    # OPTIONAL
      PluginsS3ObjectVersion       => 'MyS3ObjectVersion',    # OPTIONAL
      PluginsS3Path                => 'MyRelativePath',       # OPTIONAL
      RequirementsS3ObjectVersion  => 'MyS3ObjectVersion',    # OPTIONAL
      RequirementsS3Path           => 'MyRelativePath',       # OPTIONAL
      Schedulers                   => 1,                      # OPTIONAL
      SourceBucketArn              => 'MyS3BucketArn',        # OPTIONAL
      WebserverAccessMode          => 'PRIVATE_ONLY',         # OPTIONAL
      WeeklyMaintenanceWindowStart =>
        'MyWeeklyMaintenanceWindowStart',                     # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateEnvironmentOutput->Arn;

    # Returns a L<Paws::MWAA::UpdateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 AirflowConfigurationOptions => L<Paws::MWAA::SyntheticUpdateEnvironmentInputAirflowConfigurationOptions>

A list of key-value pairs containing the Apache Airflow configuration
options you want to attach to your environment. To learn more, see
Apache Airflow configuration options
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html).



=head2 AirflowVersion => Str

The Apache Airflow version for your environment. For example,
C<v1.10.12>. If no value is specified, defaults to the latest version.
Valid values: C<v1.10.12>.



=head2 DagS3Path => Str

The relative path to the DAGs folder on your Amazon S3 bucket. For
example, C<dags>. To learn more, see Adding or updating DAGs
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-folder.html).



=head2 EnvironmentClass => Str

The environment class type. Valid values: C<mw1.small>, C<mw1.medium>,
C<mw1.large>. To learn more, see Amazon MWAA environment class
(https://docs.aws.amazon.com/mwaa/latest/userguide/environment-class.html).



=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the execution role in IAM that allows
MWAA to access AWS resources in your environment. For example,
C<arn:aws:iam::123456789:role/my-execution-role>. To learn more, see
Amazon MWAA Execution role
(https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-create-role.html).



=head2 LoggingConfiguration => L<Paws::MWAA::LoggingConfigurationInput>

Defines the Apache Airflow logs to send to CloudWatch Logs:
C<DagProcessingLogs>, C<SchedulerLogs>, C<TaskLogs>, C<WebserverLogs>,
C<WorkerLogs>.



=head2 MaxWorkers => Int

The maximum number of workers that you want to run in your environment.
MWAA scales the number of Apache Airflow workers up to the number you
specify in the C<MaxWorkers> field. For example, C<20>. When there are
no more tasks running, and no more in the queue, MWAA disposes of the
extra workers leaving the one worker that is included with your
environment, or the number you specify in C<MinWorkers>.



=head2 MinWorkers => Int

The minimum number of workers that you want to run in your environment.
MWAA scales the number of Apache Airflow workers up to the number you
specify in the C<MaxWorkers> field. When there are no more tasks
running, and no more in the queue, MWAA disposes of the extra workers
leaving the worker count you specify in the C<MinWorkers> field. For
example, C<2>.



=head2 B<REQUIRED> Name => Str

The name of your Amazon MWAA environment. For example,
C<MyMWAAEnvironment>.



=head2 NetworkConfiguration => L<Paws::MWAA::UpdateNetworkConfigurationInput>

The VPC networking components used to secure and enable network traffic
between the AWS resources for your environment. To learn more, see
About networking on Amazon MWAA
(https://docs.aws.amazon.com/mwaa/latest/userguide/networking-about.html).



=head2 PluginsS3ObjectVersion => Str

The version of the plugins.zip file on your Amazon S3 bucket. A version
must be specified each time a plugins.zip file is updated. To learn
more, see How S3 Versioning works
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html).



=head2 PluginsS3Path => Str

The relative path to the C<plugins.zip> file on your Amazon S3 bucket.
For example, C<plugins.zip>. If specified, then the plugins.zip version
is required. To learn more, see Installing custom plugins
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import-plugins.html).



=head2 RequirementsS3ObjectVersion => Str

The version of the requirements.txt file on your Amazon S3 bucket. A
version must be specified each time a requirements.txt file is updated.
To learn more, see How S3 Versioning works
(https://docs.aws.amazon.com/AmazonS3/latest/userguide/versioning-workflows.html).



=head2 RequirementsS3Path => Str

The relative path to the C<requirements.txt> file on your Amazon S3
bucket. For example, C<requirements.txt>. If specified, then a file
version is required. To learn more, see Installing Python dependencies
(https://docs.aws.amazon.com/mwaa/latest/userguide/working-dags-dependencies.html).



=head2 Schedulers => Int

The number of Apache Airflow schedulers to run in your Amazon MWAA
environment.



=head2 SourceBucketArn => Str

The Amazon Resource Name (ARN) of the Amazon S3 bucket where your DAG
code and supporting files are stored. For example,
C<arn:aws:s3:::my-airflow-bucket-unique-name>. To learn more, see
Create an Amazon S3 bucket for Amazon MWAA
(https://docs.aws.amazon.com/mwaa/latest/userguide/mwaa-s3-bucket.html).



=head2 WebserverAccessMode => Str

The Apache Airflow I<Web server> access mode. To learn more, see Apache
Airflow access modes
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-networking.html).

Valid values are: C<"PRIVATE_ONLY">, C<"PUBLIC_ONLY">

=head2 WeeklyMaintenanceWindowStart => Str

The day and time of the week to start weekly maintenance updates of
your environment in the following format: C<DAY:HH:MM>. For example:
C<TUE:03:30>. You can specify a start time in 30 minute increments
only. Supported input includes the following:

=over

=item *

MON|TUE|WED|THU|FRI|SAT|SUN:([01]\\d|2[0-3]):(00|30)

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

