
package Paws::KinesisAnalyticsV2::UpdateApplication;
  use Moose;
  has ApplicationConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationConfigurationUpdate');
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CloudWatchLoggingOptionUpdates => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionUpdate]');
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has RunConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::RunConfigurationUpdate');
  has ServiceExecutionRoleUpdate => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::UpdateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::UpdateApplication - Arguments for method UpdateApplication on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $UpdateApplicationResponse = $kinesisanalytics->UpdateApplication(
      ApplicationName                => 'MyApplicationName',
      CurrentApplicationVersionId    => 1,
      ApplicationConfigurationUpdate => {
        ApplicationCodeConfigurationUpdate => {
          CodeContentTypeUpdate =>
            'PLAINTEXT',    # values: PLAINTEXT, ZIPFILE; OPTIONAL
          CodeContentUpdate => {
            S3ContentLocationUpdate => {
              BucketARNUpdate => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
              FileKeyUpdate   => 'MyFileKey',      # min: 1, max: 1024; OPTIONAL
              ObjectVersionUpdate => 'MyObjectVersion',    # OPTIONAL
            },    # OPTIONAL
            TextContentUpdate => 'MyTextContent',    # max: 102400; OPTIONAL
            ZipFileContentUpdate =>
              'BlobZipFileContent',                  # max: 52428800; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        ApplicationSnapshotConfigurationUpdate => {
          SnapshotsEnabledUpdate => 1,

        },    # OPTIONAL
        EnvironmentPropertyUpdates => {
          PropertyGroups => [
            {
              PropertyGroupId => 'MyId',    # min: 1, max: 50
              PropertyMap     => {
                'MyPropertyKey' => 'MyPropertyValue'
                ,    # key: min: 1, max: 2048, value: min: 1, max: 2048
              },    # min: 1, max: 50

            },
            ...
          ],        # max: 50

        },    # OPTIONAL
        FlinkApplicationConfigurationUpdate => {
          CheckpointConfigurationUpdate => {
            CheckpointIntervalUpdate   => 1,    # OPTIONAL
            CheckpointingEnabledUpdate => 1,
            ConfigurationTypeUpdate =>
              'DEFAULT',    # values: DEFAULT, CUSTOM; OPTIONAL
            MinPauseBetweenCheckpointsUpdate => 1,    # OPTIONAL
          },    # OPTIONAL
          MonitoringConfigurationUpdate => {
            ConfigurationTypeUpdate =>
              'DEFAULT',    # values: DEFAULT, CUSTOM; OPTIONAL
            LogLevelUpdate =>
              'INFO',       # values: INFO, WARN, ERROR, DEBUG; OPTIONAL
            MetricsLevelUpdate => 'APPLICATION'
            ,    # values: APPLICATION, TASK, OPERATOR, PARALLELISM; OPTIONAL
          },    # OPTIONAL
          ParallelismConfigurationUpdate => {
            AutoScalingEnabledUpdate => 1,
            ConfigurationTypeUpdate =>
              'DEFAULT',    # values: DEFAULT, CUSTOM; OPTIONAL
            ParallelismPerKPUUpdate => 1,    # min: 1; OPTIONAL
            ParallelismUpdate       => 1,    # min: 1; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        SqlApplicationConfigurationUpdate => {
          InputUpdates => [
            {
              InputId                => 'MyId',    # min: 1, max: 50
              InputParallelismUpdate => {
                CountUpdate => 1,                  # min: 1, max: 64

              },    # OPTIONAL
              InputProcessingConfigurationUpdate => {
                InputLambdaProcessorUpdate => {
                  ResourceARNUpdate => 'MyResourceARN',    # min: 1, max: 2048

                },

              },    # OPTIONAL
              InputSchemaUpdate => {
                RecordColumnUpdates => [
                  {
                    Name    => 'MyRecordColumnName',
                    SqlType => 'MyRecordColumnSqlType',    # min: 1
                    Mapping => 'MyRecordColumnMapping',    # OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 1000; OPTIONAL
                RecordEncodingUpdate => 'MyRecordEncoding',    # OPTIONAL
                RecordFormatUpdate   => {
                  RecordFormatType  => 'JSON',    # values: JSON, CSV
                  MappingParameters => {
                    CSVMappingParameters => {
                      RecordColumnDelimiter =>
                        'MyRecordColumnDelimiter',    # min: 1
                      RecordRowDelimiter => 'MyRecordRowDelimiter',    # min: 1

                    },    # OPTIONAL
                    JSONMappingParameters => {
                      RecordRowPath => 'MyRecordRowPath',    # min: 1

                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              KinesisFirehoseInputUpdate => {
                ResourceARNUpdate => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              KinesisStreamsInputUpdate => {
                ResourceARNUpdate => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              NamePrefixUpdate =>
                'MyInAppStreamName',    # min: 1, max: 32; OPTIONAL
            },
            ...
          ],                            # OPTIONAL
          OutputUpdates => [
            {
              OutputId                => 'MyId',    # min: 1, max: 50
              DestinationSchemaUpdate => {
                RecordFormatType => 'JSON',         # values: JSON, CSV

              },    # OPTIONAL
              KinesisFirehoseOutputUpdate => {
                ResourceARNUpdate => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              KinesisStreamsOutputUpdate => {
                ResourceARNUpdate => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              LambdaOutputUpdate => {
                ResourceARNUpdate => 'MyResourceARN',    # min: 1, max: 2048

              },    # OPTIONAL
              NameUpdate => 'MyInAppStreamName',    # min: 1, max: 32; OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
          ReferenceDataSourceUpdates => [
            {
              ReferenceId           => 'MyId',      # min: 1, max: 50
              ReferenceSchemaUpdate => {
                RecordColumns => [
                  {
                    Name    => 'MyRecordColumnName',
                    SqlType => 'MyRecordColumnSqlType',    # min: 1
                    Mapping => 'MyRecordColumnMapping',    # OPTIONAL
                  },
                  ...
                ],    # min: 1, max: 1000; OPTIONAL
                RecordFormat => {
                  RecordFormatType  => 'JSON',    # values: JSON, CSV
                  MappingParameters => {
                    CSVMappingParameters => {
                      RecordColumnDelimiter =>
                        'MyRecordColumnDelimiter',    # min: 1
                      RecordRowDelimiter => 'MyRecordRowDelimiter',    # min: 1

                    },    # OPTIONAL
                    JSONMappingParameters => {
                      RecordRowPath => 'MyRecordRowPath',    # min: 1

                    },    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                RecordEncoding => 'MyRecordEncoding',    # OPTIONAL
              },    # OPTIONAL
              S3ReferenceDataSourceUpdate => {
                BucketARNUpdate => 'MyBucketARN',  # min: 1, max: 2048; OPTIONAL
                FileKeyUpdate   => 'MyFileKey',    # min: 1, max: 1024; OPTIONAL
              },    # OPTIONAL
              TableNameUpdate => 'MyInAppTableName', # min: 1, max: 32; OPTIONAL
            },
            ...
          ],                                         # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      CloudWatchLoggingOptionUpdates => [
        {
          CloudWatchLoggingOptionId => 'MyId',    # min: 1, max: 50
          LogStreamARNUpdate => 'MyLogStreamARN', # min: 1, max: 2048; OPTIONAL
        },
        ...
      ],                                          # OPTIONAL
      RunConfigurationUpdate => {
        ApplicationRestoreConfiguration => {
          ApplicationRestoreType => 'SKIP_RESTORE_FROM_SNAPSHOT'
          , # values: SKIP_RESTORE_FROM_SNAPSHOT, RESTORE_FROM_LATEST_SNAPSHOT, RESTORE_FROM_CUSTOM_SNAPSHOT
          SnapshotName => 'MySnapshotName',    # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ServiceExecutionRoleUpdate => 'MyRoleARN',    # OPTIONAL
    );

    # Results:
    my $ApplicationDetail = $UpdateApplicationResponse->ApplicationDetail;

    # Returns a L<Paws::KinesisAnalyticsV2::UpdateApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/UpdateApplication>

=head1 ATTRIBUTES


=head2 ApplicationConfigurationUpdate => L<Paws::KinesisAnalyticsV2::ApplicationConfigurationUpdate>

Describes application configuration updates.



=head2 B<REQUIRED> ApplicationName => Str

The name of the application to update.



=head2 CloudWatchLoggingOptionUpdates => ArrayRef[L<Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionUpdate>]

Describes application Amazon CloudWatch logging option updates. You can
only update existing CloudWatch logging options with this action. To
add a new CloudWatch logging option, use
AddApplicationCloudWatchLoggingOption.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The current application version ID. You can retrieve the application
version ID using DescribeApplication.



=head2 RunConfigurationUpdate => L<Paws::KinesisAnalyticsV2::RunConfigurationUpdate>

Describes updates to the application's starting parameters.



=head2 ServiceExecutionRoleUpdate => Str

Describes updates to the service execution role.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

