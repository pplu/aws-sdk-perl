
package Paws::MWAA::CreateEnvironment;
  use Moose;
  has AirflowConfigurationOptions => (is => 'ro', isa => 'Paws::MWAA::SyntheticCreateEnvironmentInputAirflowConfigurationOptions');
  has AirflowVersion => (is => 'ro', isa => 'Str');
  has DagS3Path => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentClass => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has KmsKey => (is => 'ro', isa => 'Str');
  has LoggingConfiguration => (is => 'ro', isa => 'Paws::MWAA::LoggingConfigurationInput');
  has MaxWorkers => (is => 'ro', isa => 'Int');
  has MinWorkers => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Name', required => 1);
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::MWAA::NetworkConfiguration', required => 1);
  has PluginsS3ObjectVersion => (is => 'ro', isa => 'Str');
  has PluginsS3Path => (is => 'ro', isa => 'Str');
  has RequirementsS3ObjectVersion => (is => 'ro', isa => 'Str');
  has RequirementsS3Path => (is => 'ro', isa => 'Str');
  has SourceBucketArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MWAA::TagMap');
  has WebserverAccessMode => (is => 'ro', isa => 'Str');
  has WeeklyMaintenanceWindowStart => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{Name}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MWAA::CreateEnvironmentOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::CreateEnvironment - Arguments for method CreateEnvironment on L<Paws::MWAA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEnvironment on the
L<AmazonMWAA|Paws::MWAA> service. Use the attributes of this class
as arguments to method CreateEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEnvironment.

=head1 SYNOPSIS

    my $airflow = Paws->service('MWAA');
    my $CreateEnvironmentOutput = $airflow->CreateEnvironment(
      DagS3Path            => 'MyRelativePath',
      ExecutionRoleArn     => 'MyIamRoleArn',
      Name                 => 'MyEnvironmentName',
      NetworkConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # min: 1, max: 1024
        ],                            # min: 1, max: 5; OPTIONAL
        SubnetIds => [
          'MySubnetId', ...           # min: 1, max: 1024
        ],                            # min: 2, max: 2; OPTIONAL
      },
      SourceBucketArn             => 'MyS3BucketArn',
      AirflowConfigurationOptions => {
        'MyConfigKey' =>
          'MyConfigValue',    # key: min: 1, max: 64, value: min: 1, max: 256
      },    # OPTIONAL
      AirflowVersion       => 'MyAirflowVersion',      # OPTIONAL
      EnvironmentClass     => 'MyEnvironmentClass',    # OPTIONAL
      KmsKey               => 'MyKmsKey',              # OPTIONAL
      LoggingConfiguration => {
        DagProcessingLogs => {
          Enabled => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        SchedulerLogs => {
          Enabled => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        TaskLogs => {
          Enabled => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        WebserverLogs => {
          Enabled => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
        WorkerLogs => {
          Enabled => 1,
          LogLevel =>
            'CRITICAL',    # values: CRITICAL, ERROR, WARNING, INFO, DEBUG

        },    # OPTIONAL
      },    # OPTIONAL
      MaxWorkers                  => 1,                      # OPTIONAL
      MinWorkers                  => 1,                      # OPTIONAL
      PluginsS3ObjectVersion      => 'MyS3ObjectVersion',    # OPTIONAL
      PluginsS3Path               => 'MyRelativePath',       # OPTIONAL
      RequirementsS3ObjectVersion => 'MyS3ObjectVersion',    # OPTIONAL
      RequirementsS3Path          => 'MyRelativePath',       # OPTIONAL
      Tags                        => {
        'MyTagKey' =>
          'MyTagValue',    # key: min: 1, max: 128, value: min: 1, max: 256
      },    # OPTIONAL
      WebserverAccessMode => 'PRIVATE_ONLY',    # OPTIONAL
      WeeklyMaintenanceWindowStart =>
        'MyWeeklyMaintenanceWindowStart',       # OPTIONAL
    );

    # Results:
    my $Arn = $CreateEnvironmentOutput->Arn;

    # Returns a L<Paws::MWAA::CreateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/CreateEnvironment>

=head1 ATTRIBUTES


=head2 AirflowConfigurationOptions => L<Paws::MWAA::SyntheticCreateEnvironmentInputAirflowConfigurationOptions>

The Apache Airflow configuration setting you want to override in your
environment. For more information, see Environment configuration
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-env-variables.html).



=head2 AirflowVersion => Str

The Apache Airflow version you want to use for your environment.



=head2 B<REQUIRED> DagS3Path => Str

The relative path to the DAG folder on your Amazon S3 storage bucket.
For example, C<dags>. For more information, see Importing DAGs on
Amazon MWAA
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).



=head2 EnvironmentClass => Str

The environment class you want to use for your environment. The
environment class determines the size of the containers and database
used for your Apache Airflow services.



=head2 B<REQUIRED> ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the execution role for your
environment. An execution role is an AWS Identity and Access Management
(IAM) role that grants MWAA permission to access AWS services and
resources used by your environment. For example,
C<arn:aws:iam::123456789:role/my-execution-role>. For more information,
see Managing access to Amazon Managed Workflows for Apache Airflow
(https://docs.aws.amazon.com/mwaa/latest/userguide/manage-access.html).



=head2 KmsKey => Str

The AWS Key Management Service (KMS) key to encrypt and decrypt the
data in your environment. You can use an AWS KMS key managed by MWAA,
or a custom KMS key (advanced). For more information, see Customer
master keys (CMKs)
(https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html?icmpid=docs_console_unmapped#master_keys)
in the AWS KMS developer guide.



=head2 LoggingConfiguration => L<Paws::MWAA::LoggingConfigurationInput>

The Apache Airflow logs you want to send to Amazon CloudWatch Logs.



=head2 MaxWorkers => Int

The maximum number of workers that you want to run in your environment.
MWAA scales the number of Apache Airflow workers and the Fargate
containers that run your tasks up to the number you specify in this
field. When there are no more tasks running, and no more in the queue,
MWAA disposes of the extra containers leaving the one worker that is
included with your environment.



=head2 MinWorkers => Int

The minimum number of workers that you want to run in your environment.
MWAA scales the number of Apache Airflow workers and the Fargate
containers that run your tasks up to the number you specify in the
C<MaxWorkers> field. When there are no more tasks running, and no more
in the queue, MWAA disposes of the extra containers leaving the worker
count you specify in the C<MinWorkers> field.



=head2 B<REQUIRED> Name => Str

The name of your MWAA environment.



=head2 B<REQUIRED> NetworkConfiguration => L<Paws::MWAA::NetworkConfiguration>

The VPC networking components you want to use for your environment. At
least two private subnet identifiers and one VPC security group
identifier are required to create an environment. For more information,
see Creating the VPC network for a MWAA environment
(https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-mwaa.html).



=head2 PluginsS3ObjectVersion => Str

The C<plugins.zip> file version you want to use.



=head2 PluginsS3Path => Str

The relative path to the C<plugins.zip> file on your Amazon S3 storage
bucket. For example, C<plugins.zip>. If a relative path is provided in
the request, then C<PluginsS3ObjectVersion> is required. For more
information, see Importing DAGs on Amazon MWAA
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).



=head2 RequirementsS3ObjectVersion => Str

The C<requirements.txt> file version you want to use.



=head2 RequirementsS3Path => Str

The relative path to the C<requirements.txt> file on your Amazon S3
storage bucket. For example, C<requirements.txt>. If a relative path is
provided in the request, then C<RequirementsS3ObjectVersion> is
required. For more information, see Importing DAGs on Amazon MWAA
(https://docs.aws.amazon.com/mwaa/latest/userguide/configuring-dag-import.html).



=head2 B<REQUIRED> SourceBucketArn => Str

The Amazon Resource Name (ARN) of your Amazon S3 storage bucket. For
example, C<arn:aws:s3:::airflow-mybucketname>.



=head2 Tags => L<Paws::MWAA::TagMap>

The metadata tags you want to attach to your environment. For more
information, see Tagging AWS resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).



=head2 WebserverAccessMode => Str

The networking access of your Apache Airflow web server. A public
network allows your Airflow UI to be accessed over the Internet by
users granted access in your IAM policy. A private network limits
access of your Airflow UI to users within your VPC. For more
information, see Creating the VPC network for a MWAA environment
(https://docs.aws.amazon.com/mwaa/latest/userguide/vpc-mwaa.html).

Valid values are: C<"PRIVATE_ONLY">, C<"PUBLIC_ONLY">

=head2 WeeklyMaintenanceWindowStart => Str

The day and time you want MWAA to start weekly maintenance updates on
your environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEnvironment in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

