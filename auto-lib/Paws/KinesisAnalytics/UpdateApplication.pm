
package Paws::KinesisAnalytics::UpdateApplication;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has ApplicationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalytics::ApplicationUpdate', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::UpdateApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::UpdateApplication - Arguments for method UpdateApplication on L<Paws::KinesisAnalytics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplication on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalytics> service. Use the attributes of this class
as arguments to method UpdateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplication.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalytics');
    my $UpdateApplicationResponse = $kinesisanalytics->UpdateApplication(
      ApplicationName   => 'MyApplicationName',
      ApplicationUpdate => {
        ApplicationCodeUpdate => 'MyApplicationCode',    # max: 102400; OPTIONAL
        CloudWatchLoggingOptionUpdates => [
          {
            CloudWatchLoggingOptionId => 'MyId',         # min: 1, max: 50
            LogStreamARNUpdate =>
              'MyLogStreamARN',    # min: 1, max: 2048; OPTIONAL
            RoleARNUpdate => 'MyRoleARN',    # min: 1, max: 2048; OPTIONAL
          },
          ...
        ],                                   # OPTIONAL
        InputUpdates => [
          {
            InputId                => 'MyId',    # min: 1, max: 50
            InputParallelismUpdate => {
              CountUpdate => 1,                  # min: 1, max: 64; OPTIONAL
            },    # OPTIONAL
            InputProcessingConfigurationUpdate => {
              InputLambdaProcessorUpdate => {
                ResourceARNUpdate =>
                  'MyResourceARN',    # min: 1, max: 2048; OPTIONAL
                RoleARNUpdate => 'MyRoleARN',    # min: 1, max: 2048; OPTIONAL
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
                RecordFormatType  => 'JSON',                 # values: JSON, CSV
                MappingParameters => {
                  CSVMappingParameters => {
                    RecordColumnDelimiter => 'MyRecordColumnDelimiter', # min: 1
                    RecordRowDelimiter    => 'MyRecordRowDelimiter',    # min: 1

                  },    # OPTIONAL
                  JSONMappingParameters => {
                    RecordRowPath => 'MyRecordRowPath',    # min: 1

                  },    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
            KinesisFirehoseInputUpdate => {
              ResourceARNUpdate =>
                'MyResourceARN',    # min: 1, max: 2048; OPTIONAL
              RoleARNUpdate => 'MyRoleARN',    # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
            KinesisStreamsInputUpdate => {
              ResourceARNUpdate =>
                'MyResourceARN',    # min: 1, max: 2048; OPTIONAL
              RoleARNUpdate => 'MyRoleARN',    # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
            NamePrefixUpdate => 'MyInAppStreamName', # min: 1, max: 32; OPTIONAL
          },
          ...
        ],                                           # OPTIONAL
        OutputUpdates => [
          {
            OutputId                => 'MyId',       # min: 1, max: 50
            DestinationSchemaUpdate => {
              RecordFormatType => 'JSON',            # values: JSON, CSV

            },    # OPTIONAL
            KinesisFirehoseOutputUpdate => {
              ResourceARNUpdate =>
                'MyResourceARN',    # min: 1, max: 2048; OPTIONAL
              RoleARNUpdate => 'MyRoleARN',    # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
            KinesisStreamsOutputUpdate => {
              ResourceARNUpdate =>
                'MyResourceARN',    # min: 1, max: 2048; OPTIONAL
              RoleARNUpdate => 'MyRoleARN',    # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
            LambdaOutputUpdate => {
              ResourceARNUpdate =>
                'MyResourceARN',    # min: 1, max: 2048; OPTIONAL
              RoleARNUpdate => 'MyRoleARN',    # min: 1, max: 2048; OPTIONAL
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
                    RecordColumnDelimiter => 'MyRecordColumnDelimiter', # min: 1
                    RecordRowDelimiter    => 'MyRecordRowDelimiter',    # min: 1

                  },    # OPTIONAL
                  JSONMappingParameters => {
                    RecordRowPath => 'MyRecordRowPath',    # min: 1

                  },    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              RecordEncoding => 'MyRecordEncoding',    # OPTIONAL
            },    # OPTIONAL
            S3ReferenceDataSourceUpdate => {
              BucketARNUpdate => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
              FileKeyUpdate   => 'MyFileKey',      # min: 1, max: 1024; OPTIONAL
              ReferenceRoleARNUpdate =>
                'MyRoleARN',                       # min: 1, max: 2048; OPTIONAL
            },    # OPTIONAL
            TableNameUpdate => 'MyInAppTableName',   # min: 1, max: 32; OPTIONAL
          },
          ...
        ],                                           # OPTIONAL
      },
      CurrentApplicationVersionId => 1,

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/UpdateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of the Amazon Kinesis Analytics application to update.



=head2 B<REQUIRED> ApplicationUpdate => L<Paws::KinesisAnalytics::ApplicationUpdate>

Describes application updates.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

The current application version ID. You can use the DescribeApplication
operation to get this value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplication in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

