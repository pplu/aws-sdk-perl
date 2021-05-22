
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
      MaxWorkers           => 1,    # OPTIONAL
      MinWorkers           => 1,    # OPTIONAL
      NetworkConfiguration => {
        SecurityGroupIds => [
          'MySecurityGroupId', ...    # min: 1, max: 1024
        ],                            # min: 1, max: 5

      },    # OPTIONAL
      PluginsS3ObjectVersion      => 'MyS3ObjectVersion',    # OPTIONAL
      PluginsS3Path               => 'MyRelativePath',       # OPTIONAL
      RequirementsS3ObjectVersion => 'MyS3ObjectVersion',    # OPTIONAL
      RequirementsS3Path          => 'MyRelativePath',       # OPTIONAL
      SourceBucketArn             => 'MyS3BucketArn',        # OPTIONAL
      WebserverAccessMode         => 'PRIVATE_ONLY',         # OPTIONAL
      WeeklyMaintenanceWindowStart =>
        'MyWeeklyMaintenanceWindowStart',                    # OPTIONAL
    );

    # Results:
    my $Arn = $UpdateEnvironmentOutput->Arn;

    # Returns a L<Paws::MWAA::UpdateEnvironmentOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/airflow/UpdateEnvironment>

=head1 ATTRIBUTES


=head2 AirflowConfigurationOptions => L<Paws::MWAA::SyntheticUpdateEnvironmentInputAirflowConfigurationOptions>

The Airflow Configuration Options to update of your Amazon MWAA
environment.



=head2 AirflowVersion => Str

The Airflow Version to update of your Amazon MWAA environment.



=head2 DagS3Path => Str

The Dags folder S3 Path to update of your Amazon MWAA environment.



=head2 EnvironmentClass => Str

The Environment Class to update of your Amazon MWAA environment.



=head2 ExecutionRoleArn => Str

The Executio Role ARN to update of your Amazon MWAA environment.



=head2 LoggingConfiguration => L<Paws::MWAA::LoggingConfigurationInput>

The Logging Configuration to update of your Amazon MWAA environment.



=head2 MaxWorkers => Int

The maximum number of workers to update of your Amazon MWAA
environment.



=head2 MinWorkers => Int

The minimum number of workers to update of your Amazon MWAA
environment.



=head2 B<REQUIRED> Name => Str

The name of your Amazon MWAA environment that you wish to update.



=head2 NetworkConfiguration => L<Paws::MWAA::UpdateNetworkConfigurationInput>

The Network Configuration to update of your Amazon MWAA environment.



=head2 PluginsS3ObjectVersion => Str

The Plugins.zip S3 Object Version to update of your Amazon MWAA
environment.



=head2 PluginsS3Path => Str

The Plugins.zip S3 Path to update of your Amazon MWAA environment.



=head2 RequirementsS3ObjectVersion => Str

The Requirements.txt S3 ObjectV ersion to update of your Amazon MWAA
environment.



=head2 RequirementsS3Path => Str

The Requirements.txt S3 Path to update of your Amazon MWAA environment.



=head2 SourceBucketArn => Str

The S3 Source Bucket ARN to update of your Amazon MWAA environment.



=head2 WebserverAccessMode => Str

The Webserver Access Mode to update of your Amazon MWAA environment.

Valid values are: C<"PRIVATE_ONLY">, C<"PUBLIC_ONLY">

=head2 WeeklyMaintenanceWindowStart => Str

The Weekly Maintenance Window Start to update of your Amazon MWAA
environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateEnvironment in L<Paws::MWAA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

