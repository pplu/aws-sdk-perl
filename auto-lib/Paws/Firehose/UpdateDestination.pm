
package Paws::Firehose::UpdateDestination;
  use Moose;
  has CurrentDeliveryStreamVersionId => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has DestinationId => (is => 'ro', isa => 'Str', required => 1);
  has ElasticsearchDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchDestinationUpdate');
  has ExtendedS3DestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::ExtendedS3DestinationUpdate');
  has RedshiftDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationUpdate');
  has S3DestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::S3DestinationUpdate');
  has SplunkDestinationUpdate => (is => 'ro', isa => 'Paws::Firehose::SplunkDestinationUpdate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::UpdateDestinationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::UpdateDestination - Arguments for method UpdateDestination on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDestination on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method UpdateDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDestination.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $UpdateDestinationOutput = $firehose->UpdateDestination(
      CurrentDeliveryStreamVersionId => 'MyDeliveryStreamVersionId',
      DeliveryStreamName             => 'MyDeliveryStreamName',
      DestinationId                  => 'MyDestinationId',
      ElasticsearchDestinationUpdate => {
        S3Update => {
          BufferingHints => {
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          },    # OPTIONAL
          Prefix                  => 'MyPrefix',    # OPTIONAL
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          RoleARN                  => 'MyRoleARN',  # min: 1, max: 512; OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                     # OPTIONAL
            LogGroupName  => 'MyLogGroupName',      # OPTIONAL
            LogStreamName => 'MyLogStreamName',     # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        BufferingHints => {
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
        },    # OPTIONAL
        IndexName => 'MyElasticsearchIndexName',    # min: 1, max: 80; OPTIONAL
        DomainARN => 'MyElasticsearchDomainARN',    # min: 1, max: 512; OPTIONAL
        RoleARN   => 'MyRoleARN',                   # min: 1, max: 512; OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                       # OPTIONAL
          LogGroupName  => 'MyLogGroupName',        # OPTIONAL
          LogStreamName => 'MyLogStreamName',       # OPTIONAL
        },    # OPTIONAL
        TypeName => 'MyElasticsearchTypeName',    # min: 1, max: 100; OPTIONAL
        ProcessingConfiguration => {
          Processors => [
            {
              Type       => 'Lambda',             # values: Lambda
              Parameters => [
                {
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
        IndexRotationPeriod => 'NoRotation'
        ,     # values: NoRotation, OneHour, OneDay, OneWeek, OneMonth; OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ExtendedS3DestinationUpdate => {
        BufferingHints => {
          SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
        },    # OPTIONAL
        DataFormatConversionConfiguration => {
          Enabled                   => 1,    # OPTIONAL
          OutputFormatConfiguration => {
            Serializer => {
              ParquetSerDe => {
                MaxPaddingBytes             => 1,    # OPTIONAL
                EnableDictionaryCompression => 1,    # OPTIONAL
                PageSizeBytes               => 1,    # min: 65536, ; OPTIONAL
                Compression =>
                  'UNCOMPRESSED', # values: UNCOMPRESSED, GZIP, SNAPPY; OPTIONAL
                WriterVersion  => 'V1',    # values: V1, V2; OPTIONAL
                BlockSizeBytes => 1,       # min: 67108864, ; OPTIONAL
              },    # OPTIONAL
              OrcSerDe => {
                Compression   => 'NONE',  # values: NONE, ZLIB, SNAPPY; OPTIONAL
                EnablePadding => 1,       # OPTIONAL
                DictionaryKeyThreshold => 1,    # max: 1; OPTIONAL
                FormatVersion      => 'V0_11',  # values: V0_11, V0_12; OPTIONAL
                RowIndexStride     => 1,        # min: 1000, ; OPTIONAL
                PaddingTolerance   => 1,        # max: 1; OPTIONAL
                StripeSizeBytes    => 1,        # min: 8388608, ; OPTIONAL
                BloomFilterColumns => [
                  'MyNonEmptyStringWithoutWhitespace', ...    # OPTIONAL
                ],                                            # OPTIONAL
                BloomFilterFalsePositiveProbability => 1,     # max: 1; OPTIONAL
                BlockSizeBytes => 1,    # min: 67108864, ; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SchemaConfiguration => {
            CatalogId    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            Region       => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            RoleARN      => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            VersionId    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            TableName    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            DatabaseName => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
          },    # OPTIONAL
          InputFormatConfiguration => {
            Deserializer => {
              OpenXJsonSerDe => {
                ColumnToJsonKeyMappings => {
                  'MyNonEmptyStringWithoutWhitespace' =>
                    'MyNonEmptyString',    # key: OPTIONAL
                },    # OPTIONAL
                ConvertDotsInJsonKeysToUnderscores => 1,    # OPTIONAL
                CaseInsensitive                    => 1,    # OPTIONAL
              },    # OPTIONAL
              HiveJsonSerDe => {
                TimestampFormats => [ 'MyNonEmptyString', ... ],    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Prefix                  => 'MyPrefix',    # OPTIONAL
        EncryptionConfiguration => {
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
        },    # OPTIONAL
        S3BackupUpdate => {
          BufferingHints => {
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          },    # OPTIONAL
          Prefix                  => 'MyPrefix',    # OPTIONAL
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          RoleARN                  => 'MyRoleARN',  # min: 1, max: 512; OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                     # OPTIONAL
            LogGroupName  => 'MyLogGroupName',      # OPTIONAL
            LogStreamName => 'MyLogStreamName',     # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        RoleARN                  => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                       # OPTIONAL
          LogGroupName  => 'MyLogGroupName',        # OPTIONAL
          LogStreamName => 'MyLogStreamName',       # OPTIONAL
        },    # OPTIONAL
        S3BackupMode => 'Disabled',    # values: Disabled, Enabled; OPTIONAL
        CompressionFormat =>
          'UNCOMPRESSED',    # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        ProcessingConfiguration => {
          Processors => [
            {
              Type       => 'Lambda',    # values: Lambda
              Parameters => [
                {
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
        BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      RedshiftDestinationUpdate => {
        S3Update => {
          BufferingHints => {
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          },    # OPTIONAL
          Prefix                  => 'MyPrefix',    # OPTIONAL
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          RoleARN                  => 'MyRoleARN',  # min: 1, max: 512; OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                     # OPTIONAL
            LogGroupName  => 'MyLogGroupName',      # OPTIONAL
            LogStreamName => 'MyLogStreamName',     # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        Password    => 'MyPassword',    # min: 6, ; OPTIONAL
        Username    => 'MyUsername',    # min: 1, ; OPTIONAL
        CopyCommand => {
          DataTableName    => 'MyDataTableName',       # min: 1,
          CopyOptions      => 'MyCopyOptions',         # OPTIONAL
          DataTableColumns => 'MyDataTableColumns',    # OPTIONAL
        },    # OPTIONAL
        S3BackupUpdate => {
          BufferingHints => {
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          },    # OPTIONAL
          Prefix                  => 'MyPrefix',    # OPTIONAL
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          RoleARN                  => 'MyRoleARN',  # min: 1, max: 512; OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                     # OPTIONAL
            LogGroupName  => 'MyLogGroupName',      # OPTIONAL
            LogStreamName => 'MyLogStreamName',     # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        RoleARN                  => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                       # OPTIONAL
          LogGroupName  => 'MyLogGroupName',        # OPTIONAL
          LogStreamName => 'MyLogStreamName',       # OPTIONAL
        },    # OPTIONAL
        S3BackupMode => 'Disabled',    # values: Disabled, Enabled; OPTIONAL
        ClusterJDBCURL          => 'MyClusterJDBCURL',    # min: 1, ; OPTIONAL
        ProcessingConfiguration => {
          Processors => [
            {
              Type       => 'Lambda',                     # values: Lambda
              Parameters => [
                {
                  ParameterValue =>
                    'MyProcessorParameterValue',          # min: 1, max: 512
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      S3DestinationUpdate => {
        BufferingHints => {
          SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
        },    # OPTIONAL
        Prefix                  => 'MyPrefix',    # OPTIONAL
        EncryptionConfiguration => {
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
        },    # OPTIONAL
        RoleARN                  => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                       # OPTIONAL
          LogGroupName  => 'MyLogGroupName',        # OPTIONAL
          LogStreamName => 'MyLogStreamName',       # OPTIONAL
        },    # OPTIONAL
        CompressionFormat =>
          'UNCOMPRESSED',    # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
      },    # OPTIONAL
      SplunkDestinationUpdate => {
        S3Update => {
          BufferingHints => {
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          },    # OPTIONAL
          Prefix                  => 'MyPrefix',    # OPTIONAL
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          RoleARN                  => 'MyRoleARN',  # min: 1, max: 512; OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                     # OPTIONAL
            LogGroupName  => 'MyLogGroupName',      # OPTIONAL
            LogStreamName => 'MyLogStreamName',     # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          BucketARN => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
        },    # OPTIONAL
        HECAcknowledgmentTimeoutInSeconds => 1,   # min: 180, max: 600; OPTIONAL
        HECToken                 => 'MyHECToken', # OPTIONAL
        HECEndpointType          => 'Raw',        # values: Raw, Event; OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                     # OPTIONAL
          LogGroupName  => 'MyLogGroupName',      # OPTIONAL
          LogStreamName => 'MyLogStreamName',     # OPTIONAL
        },    # OPTIONAL
        S3BackupMode =>
          'FailedEventsOnly',    # values: FailedEventsOnly, AllEvents; OPTIONAL
        ProcessingConfiguration => {
          Processors => [
            {
              Type       => 'Lambda',    # values: Lambda
              Parameters => [
                {
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],        # OPTIONAL
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        HECEndpoint => 'MyHECEndpoint',    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/UpdateDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentDeliveryStreamVersionId => Str

Obtain this value from the B<VersionId> result of
DeliveryStreamDescription. This value is required, and helps the
service perform conditional operations. For example, if there is an
interleaving update and this value is null, then the update destination
fails. After the update is successful, the C<VersionId> value is
updated. The service then performs a merge of the old configuration
with the new configuration.



=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream.



=head2 B<REQUIRED> DestinationId => Str

The ID of the destination.



=head2 ElasticsearchDestinationUpdate => L<Paws::Firehose::ElasticsearchDestinationUpdate>

Describes an update for a destination in Amazon ES.



=head2 ExtendedS3DestinationUpdate => L<Paws::Firehose::ExtendedS3DestinationUpdate>

Describes an update for a destination in Amazon S3.



=head2 RedshiftDestinationUpdate => L<Paws::Firehose::RedshiftDestinationUpdate>

Describes an update for a destination in Amazon Redshift.



=head2 S3DestinationUpdate => L<Paws::Firehose::S3DestinationUpdate>

[Deprecated] Describes an update for a destination in Amazon S3.



=head2 SplunkDestinationUpdate => L<Paws::Firehose::SplunkDestinationUpdate>

Describes an update for a destination in Splunk.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDestination in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

