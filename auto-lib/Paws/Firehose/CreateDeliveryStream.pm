
package Paws::Firehose::CreateDeliveryStream;
  use Moose;
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryStreamType => (is => 'ro', isa => 'Str');
  has ElasticsearchDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchDestinationConfiguration');
  has ExtendedS3DestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::ExtendedS3DestinationConfiguration');
  has KinesisStreamSourceConfiguration => (is => 'ro', isa => 'Paws::Firehose::KinesisStreamSourceConfiguration');
  has RedshiftDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationConfiguration');
  has S3DestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration');
  has SplunkDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::SplunkDestinationConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeliveryStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Firehose::CreateDeliveryStreamOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::CreateDeliveryStream - Arguments for method CreateDeliveryStream on L<Paws::Firehose>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeliveryStream on the
L<Amazon Kinesis Firehose|Paws::Firehose> service. Use the attributes of this class
as arguments to method CreateDeliveryStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeliveryStream.

=head1 SYNOPSIS

    my $firehose = Paws->service('Firehose');
    my $CreateDeliveryStreamOutput = $firehose->CreateDeliveryStream(
      DeliveryStreamName                    => 'MyDeliveryStreamName',
      DeliveryStreamType                    => 'DirectPut',           # OPTIONAL
      ElasticsearchDestinationConfiguration => {
        RoleARN         => 'MyRoleARN',    # min: 1, max: 512
        S3Configuration => {
          RoleARN                 => 'MyRoleARN',      # min: 1, max: 512
          BucketARN               => 'MyBucketARN',    # min: 1, max: 2048
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            Enabled       => 1,                    # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        },
        TypeName  => 'MyElasticsearchTypeName',     # min: 1, max: 100
        IndexName => 'MyElasticsearchIndexName',    # min: 1, max: 80
        DomainARN => 'MyElasticsearchDomainARN',    # min: 1, max: 512
        CloudWatchLoggingOptions => {
          LogStreamName => 'MyLogStreamName',       # OPTIONAL
          LogGroupName  => 'MyLogGroupName',        # OPTIONAL
          Enabled       => 1,                       # OPTIONAL
        },    # OPTIONAL
        BufferingHints => {
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        S3BackupMode => 'FailedDocumentsOnly'
        ,     # values: FailedDocumentsOnly, AllDocuments; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,    # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',    # values: Lambda
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512

                },
                ...
              ],                                    # OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
        },    # OPTIONAL
        IndexRotationPeriod => 'NoRotation'
        ,     # values: NoRotation, OneHour, OneDay, OneWeek, OneMonth; OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      ExtendedS3DestinationConfiguration => {
        RoleARN                  => 'MyRoleARN',      # min: 1, max: 512
        BucketARN                => 'MyBucketARN',    # min: 1, max: 2048
        CloudWatchLoggingOptions => {
          LogStreamName => 'MyLogStreamName',         # OPTIONAL
          LogGroupName  => 'MyLogGroupName',          # OPTIONAL
          Enabled       => 1,                         # OPTIONAL
        },    # OPTIONAL
        BufferingHints => {
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        Prefix => 'MyPrefix',    # OPTIONAL
        CompressionFormat =>
          'UNCOMPRESSED',    # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,    # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',    # values: Lambda
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512

                },
                ...
              ],                                    # OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
        },    # OPTIONAL
        DataFormatConversionConfiguration => {
          OutputFormatConfiguration => {
            Serializer => {
              OrcSerDe => {
                BlockSizeBytes     => 1,    # min: 67108864, ; OPTIONAL
                StripeSizeBytes    => 1,    # min: 8388608, ; OPTIONAL
                RowIndexStride     => 1,    # min: 1000, ; OPTIONAL
                PaddingTolerance   => 1,    # max: 1; OPTIONAL
                BloomFilterColumns => [
                  'MyNonEmptyStringWithoutWhitespace', ...    # OPTIONAL
                ],                                            # OPTIONAL
                BloomFilterFalsePositiveProbability => 1,     # max: 1; OPTIONAL
                EnablePadding                       => 1,     # OPTIONAL
                Compression => 'NONE',    # values: NONE, ZLIB, SNAPPY; OPTIONAL
                DictionaryKeyThreshold => 1,    # max: 1; OPTIONAL
                FormatVersion => 'V0_11',       # values: V0_11, V0_12; OPTIONAL
              },    # OPTIONAL
              ParquetSerDe => {
                Compression =>
                  'UNCOMPRESSED', # values: UNCOMPRESSED, GZIP, SNAPPY; OPTIONAL
                PageSizeBytes               => 1,    # min: 65536, ; OPTIONAL
                EnableDictionaryCompression => 1,    # OPTIONAL
                BlockSizeBytes              => 1,    # min: 67108864, ; OPTIONAL
                MaxPaddingBytes             => 1,    # OPTIONAL
                WriterVersion               => 'V1', # values: V1, V2; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SchemaConfiguration => {
            VersionId    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            Region       => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            DatabaseName => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            TableName    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            RoleARN      => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            CatalogId    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
          },    # OPTIONAL
          InputFormatConfiguration => {
            Deserializer => {
              OpenXJsonSerDe => {
                CaseInsensitive         => 1,    # OPTIONAL
                ColumnToJsonKeyMappings => {
                  'MyNonEmptyStringWithoutWhitespace' =>
                    'MyNonEmptyString',          # key: OPTIONAL
                },    # OPTIONAL
                ConvertDotsInJsonKeysToUnderscores => 1,    # OPTIONAL
              },    # OPTIONAL
              HiveJsonSerDe => {
                TimestampFormats => [ 'MyNonEmptyString', ... ],    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
        S3BackupConfiguration => {
          RoleARN                 => 'MyRoleARN',      # min: 1, max: 512
          BucketARN               => 'MyBucketARN',    # min: 1, max: 2048
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            Enabled       => 1,                    # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        },
        EncryptionConfiguration => {
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
        },    # OPTIONAL
        S3BackupMode => 'Disabled',    # values: Disabled, Enabled; OPTIONAL
      },    # OPTIONAL
      KinesisStreamSourceConfiguration => {
        RoleARN          => 'MyRoleARN',             # min: 1, max: 512
        KinesisStreamARN => 'MyKinesisStreamARN',    # min: 1, max: 512

      },    # OPTIONAL
      RedshiftDestinationConfiguration => {
        S3Configuration => {
          RoleARN                 => 'MyRoleARN',      # min: 1, max: 512
          BucketARN               => 'MyBucketARN',    # min: 1, max: 2048
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            Enabled       => 1,                    # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        },
        Password    => 'MyPassword',    # min: 6,
        RoleARN     => 'MyRoleARN',     # min: 1, max: 512
        Username    => 'MyUsername',    # min: 1,
        CopyCommand => {
          DataTableName    => 'MyDataTableName',       # min: 1,
          CopyOptions      => 'MyCopyOptions',         # OPTIONAL
          DataTableColumns => 'MyDataTableColumns',    # OPTIONAL
        },
        ClusterJDBCURL        => 'MyClusterJDBCURL',    # min: 1,
        S3BackupConfiguration => {
          RoleARN                 => 'MyRoleARN',       # min: 1, max: 512
          BucketARN               => 'MyBucketARN',     # min: 1, max: 2048
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            Enabled       => 1,                    # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        },
        ProcessingConfiguration => {
          Enabled    => 1,    # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',    # values: Lambda
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512

                },
                ...
              ],                                    # OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        S3BackupMode => 'Disabled',    # values: Disabled, Enabled; OPTIONAL
        CloudWatchLoggingOptions => {
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          Enabled       => 1,                    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      S3DestinationConfiguration => {
        RoleARN                 => 'MyRoleARN',      # min: 1, max: 512
        BucketARN               => 'MyBucketARN',    # min: 1, max: 2048
        EncryptionConfiguration => {
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
        },    # OPTIONAL
        BufferingHints => {
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          Enabled       => 1,                    # OPTIONAL
        },    # OPTIONAL
        Prefix => 'MyPrefix',    # OPTIONAL
        CompressionFormat =>
          'UNCOMPRESSED',    # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
      },    # OPTIONAL
      SplunkDestinationConfiguration => {
        HECEndpoint     => 'MyHECEndpoint',
        S3Configuration => {
          RoleARN                 => 'MyRoleARN',      # min: 1, max: 512
          BucketARN               => 'MyBucketARN',    # min: 1, max: 2048
          EncryptionConfiguration => {
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
          },    # OPTIONAL
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            Enabled       => 1,                    # OPTIONAL
          },    # OPTIONAL
          Prefix => 'MyPrefix',    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        },
        HECToken        => 'MyHECToken',
        HECEndpointType => 'Raw',          # values: Raw, Event
        S3BackupMode =>
          'FailedEventsOnly',    # values: FailedEventsOnly, AllEvents; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,       # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',    # values: Lambda
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512

                },
                ...
              ],                                    # OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        HECAcknowledgmentTimeoutInSeconds => 1,   # min: 180, max: 600; OPTIONAL
        CloudWatchLoggingOptions          => {
          LogStreamName => 'MyLogStreamName',     # OPTIONAL
          LogGroupName  => 'MyLogGroupName',      # OPTIONAL
          Enabled       => 1,                     # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $DeliveryStreamARN = $CreateDeliveryStreamOutput->DeliveryStreamARN;

    # Returns a L<Paws::Firehose::CreateDeliveryStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/CreateDeliveryStream>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliveryStreamName => Str

The name of the delivery stream. This name must be unique per AWS
account in the same AWS Region. If the delivery streams are in
different accounts or different Regions, you can have multiple delivery
streams with the same name.



=head2 DeliveryStreamType => Str

The delivery stream type. This parameter can be one of the following
values:

=over

=item *

C<DirectPut>: Provider applications access the delivery stream
directly.

=item *

C<KinesisStreamAsSource>: The delivery stream uses a Kinesis data
stream as a source.

=back


Valid values are: C<"DirectPut">, C<"KinesisStreamAsSource">

=head2 ElasticsearchDestinationConfiguration => L<Paws::Firehose::ElasticsearchDestinationConfiguration>

The destination in Amazon ES. You can specify only one destination.



=head2 ExtendedS3DestinationConfiguration => L<Paws::Firehose::ExtendedS3DestinationConfiguration>

The destination in Amazon S3. You can specify only one destination.



=head2 KinesisStreamSourceConfiguration => L<Paws::Firehose::KinesisStreamSourceConfiguration>

When a Kinesis data stream is used as the source for the delivery
stream, a KinesisStreamSourceConfiguration containing the Kinesis data
stream Amazon Resource Name (ARN) and the role ARN for the source
stream.



=head2 RedshiftDestinationConfiguration => L<Paws::Firehose::RedshiftDestinationConfiguration>

The destination in Amazon Redshift. You can specify only one
destination.



=head2 S3DestinationConfiguration => L<Paws::Firehose::S3DestinationConfiguration>

[Deprecated] The destination in Amazon S3. You can specify only one
destination.



=head2 SplunkDestinationConfiguration => L<Paws::Firehose::SplunkDestinationConfiguration>

The destination in Splunk. You can specify only one destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

