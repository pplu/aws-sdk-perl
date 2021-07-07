
package Paws::Firehose::CreateDeliveryStream;
  use Moose;
  has DeliveryStreamEncryptionConfigurationInput => (is => 'ro', isa => 'Paws::Firehose::DeliveryStreamEncryptionConfigurationInput');
  has DeliveryStreamName => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryStreamType => (is => 'ro', isa => 'Str');
  has ElasticsearchDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::ElasticsearchDestinationConfiguration');
  has ExtendedS3DestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::ExtendedS3DestinationConfiguration');
  has HttpEndpointDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::HttpEndpointDestinationConfiguration');
  has KinesisStreamSourceConfiguration => (is => 'ro', isa => 'Paws::Firehose::KinesisStreamSourceConfiguration');
  has RedshiftDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::RedshiftDestinationConfiguration');
  has S3DestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::S3DestinationConfiguration');
  has SplunkDestinationConfiguration => (is => 'ro', isa => 'Paws::Firehose::SplunkDestinationConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Firehose::Tag]');

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
      DeliveryStreamName                         => 'MyDeliveryStreamName',
      DeliveryStreamEncryptionConfigurationInput => {
        KeyType =>
          'AWS_OWNED_CMK',    # values: AWS_OWNED_CMK, CUSTOMER_MANAGED_CMK
        KeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL
      },    # OPTIONAL
      DeliveryStreamType                    => 'DirectPut',    # OPTIONAL
      ElasticsearchDestinationConfiguration => {
        IndexName       => 'MyElasticsearchIndexName',    # min: 1, max: 80
        RoleARN         => 'MyRoleARN',                   # min: 1, max: 512
        S3Configuration => {
          BucketARN      => 'MyBucketARN',                # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',                  # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
        },
        BufferingHints => {
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        ClusterEndpoint =>
          'MyElasticsearchClusterEndpoint',    # min: 1, max: 512; OPTIONAL
        DomainARN => 'MyElasticsearchDomainARN',    # min: 1, max: 512; OPTIONAL
        IndexRotationPeriod => 'NoRotation'
        ,    # values: NoRotation, OneHour, OneDay, OneWeek, OneMonth; OPTIONAL
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
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        S3BackupMode => 'FailedDocumentsOnly'
        ,     # values: FailedDocumentsOnly, AllDocuments; OPTIONAL
        TypeName         => 'MyElasticsearchTypeName',    # max: 100; OPTIONAL
        VpcConfiguration => {
          RoleARN          => 'MyRoleARN',                # min: 1, max: 512
          SecurityGroupIds => [
            'MyNonEmptyStringWithoutWhitespace', ...      # min: 1, max: 1024
          ],    # min: 1, max: 5
          SubnetIds => [
            'MyNonEmptyStringWithoutWhitespace', ...    # min: 1, max: 1024
          ],    # min: 1, max: 16

        },    # OPTIONAL
      },    # OPTIONAL
      ExtendedS3DestinationConfiguration => {
        BucketARN      => 'MyBucketARN',    # min: 1, max: 2048
        RoleARN        => 'MyRoleARN',      # min: 1, max: 512
        BufferingHints => {
          IntervalInSeconds => 1,           # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        CompressionFormat => 'UNCOMPRESSED'
        ,     # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
        DataFormatConversionConfiguration => {
          Enabled                  => 1,    # OPTIONAL
          InputFormatConfiguration => {
            Deserializer => {
              HiveJsonSerDe => {
                TimestampFormats => [
                  'MyNonEmptyString', ...    # min: 1, max: 1024
                ],    # OPTIONAL
              },    # OPTIONAL
              OpenXJsonSerDe => {
                CaseInsensitive         => 1,    # OPTIONAL
                ColumnToJsonKeyMappings => {
                  'MyNonEmptyStringWithoutWhitespace' => 'MyNonEmptyString'
                  ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
                },    # OPTIONAL
                ConvertDotsInJsonKeysToUnderscores => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          OutputFormatConfiguration => {
            Serializer => {
              OrcSerDe => {
                BlockSizeBytes     => 1,    # min: 67108864; OPTIONAL
                BloomFilterColumns => [
                  'MyNonEmptyStringWithoutWhitespace', ...   # min: 1, max: 1024
                ],    # OPTIONAL
                BloomFilterFalsePositiveProbability => 1,    # max: 1; OPTIONAL
                Compression => 'NONE',    # values: NONE, ZLIB, SNAPPY; OPTIONAL
                DictionaryKeyThreshold => 1,    # max: 1; OPTIONAL
                EnablePadding          => 1,    # OPTIONAL
                FormatVersion    => 'V0_11',    # values: V0_11, V0_12; OPTIONAL
                PaddingTolerance => 1,          # max: 1; OPTIONAL
                RowIndexStride   => 1,          # min: 1000; OPTIONAL
                StripeSizeBytes  => 1,          # min: 8388608; OPTIONAL
              },    # OPTIONAL
              ParquetSerDe => {
                BlockSizeBytes => 1,    # min: 67108864; OPTIONAL
                Compression    =>
                  'UNCOMPRESSED', # values: UNCOMPRESSED, GZIP, SNAPPY; OPTIONAL
                EnableDictionaryCompression => 1,     # OPTIONAL
                MaxPaddingBytes             => 1,     # OPTIONAL
                PageSizeBytes               => 1,     # min: 65536; OPTIONAL
                WriterVersion               => 'V1',  # values: V1, V2; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SchemaConfiguration => {
            CatalogId =>
              'MyNonEmptyStringWithoutWhitespace',    # min: 1, max: 1024
            DatabaseName =>
              'MyNonEmptyStringWithoutWhitespace',    # min: 1, max: 1024
            Region  => 'MyNonEmptyStringWithoutWhitespace',  # min: 1, max: 1024
            RoleARN => 'MyNonEmptyStringWithoutWhitespace',  # min: 1, max: 1024
            TableName =>
              'MyNonEmptyStringWithoutWhitespace',           # min: 1, max: 1024
            VersionId =>
              'MyNonEmptyStringWithoutWhitespace',           # min: 1, max: 1024
          },    # OPTIONAL
        },    # OPTIONAL
        EncryptionConfiguration => {
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

          },    # OPTIONAL
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
        },    # OPTIONAL
        ErrorOutputPrefix       => 'MyErrorOutputPrefix',  # max: 1024; OPTIONAL
        Prefix                  => 'MyPrefix',             # max: 1024; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                                 # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',                      # values: Lambda
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        S3BackupConfiguration => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',      # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,           # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
        },
        S3BackupMode => 'Disabled',    # values: Disabled, Enabled; OPTIONAL
      },    # OPTIONAL
      HttpEndpointDestinationConfiguration => {
        EndpointConfiguration => {
          Url       => 'MyHttpEndpointUrl',         # min: 1, max: 1000
          AccessKey => 'MyHttpEndpointAccessKey',   # max: 4096; OPTIONAL
          Name      => 'MyHttpEndpointName',        # min: 1, max: 256; OPTIONAL
        },
        S3Configuration => {
          BucketARN      => 'MyBucketARN',          # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',            # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
        },
        BufferingHints => {
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 64; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
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
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RequestConfiguration => {
          CommonAttributes => [
            {
              AttributeName => 'MyHttpEndpointAttributeName', # min: 1, max: 256
              AttributeValue => 'MyHttpEndpointAttributeValue',    # max: 1024

            },
            ...
          ],    # max: 50; OPTIONAL
          ContentEncoding => 'NONE',    # values: NONE, GZIP; OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        RoleARN      => 'MyRoleARN',    # min: 1, max: 512
        S3BackupMode =>
          'FailedDataOnly',    # values: FailedDataOnly, AllData; OPTIONAL
      },    # OPTIONAL
      KinesisStreamSourceConfiguration => {
        KinesisStreamARN => 'MyKinesisStreamARN',    # min: 1, max: 512
        RoleARN          => 'MyRoleARN',             # min: 1, max: 512

      },    # OPTIONAL
      RedshiftDestinationConfiguration => {
        ClusterJDBCURL => 'MyClusterJDBCURL',    # min: 1, max: 512
        CopyCommand    => {
          DataTableName    => 'MyDataTableName',       # min: 1, max: 512
          CopyOptions      => 'MyCopyOptions',         # max: 204800; OPTIONAL
          DataTableColumns => 'MyDataTableColumns',    # max: 204800; OPTIONAL
        },
        Password        => 'MyPassword',               # min: 6, max: 512
        RoleARN         => 'MyRoleARN',                # min: 1, max: 512
        S3Configuration => {
          BucketARN      => 'MyBucketARN',             # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',               # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,    # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
        },
        Username                 => 'MyUsername',        # min: 1, max: 512
        CloudWatchLoggingOptions => {
          Enabled       => 1,                            # OPTIONAL
          LogGroupName  => 'MyLogGroupName',             # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',            # max: 512; OPTIONAL
        },    # OPTIONAL
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
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        S3BackupConfiguration => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',      # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,           # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
        },
        S3BackupMode => 'Disabled',    # values: Disabled, Enabled; OPTIONAL
      },    # OPTIONAL
      S3DestinationConfiguration => {
        BucketARN      => 'MyBucketARN',    # min: 1, max: 2048
        RoleARN        => 'MyRoleARN',      # min: 1, max: 512
        BufferingHints => {
          IntervalInSeconds => 1,           # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
        },    # OPTIONAL
        CompressionFormat => 'UNCOMPRESSED'
        ,     # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
        EncryptionConfiguration => {
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

          },    # OPTIONAL
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
        },    # OPTIONAL
        ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
        Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
      },    # OPTIONAL
      SplunkDestinationConfiguration => {
        HECEndpoint     => 'MyHECEndpoint',    # max: 2048
        HECEndpointType => 'Raw',              # values: Raw, Event
        HECToken        => 'MyHECToken',       # max: 2048
        S3Configuration => {
          BucketARN      => 'MyBucketARN',     # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',       # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,            # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,            # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # max: 512; OPTIONAL
            LogStreamName => 'MyLogStreamName',    # max: 512; OPTIONAL
          },    # OPTIONAL
          CompressionFormat => 'UNCOMPRESSED'
          ,   # values: UNCOMPRESSED, GZIP, ZIP, Snappy, HADOOP_SNAPPY; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512; OPTIONAL

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # max: 1024; OPTIONAL
          Prefix            => 'MyPrefix',               # max: 1024; OPTIONAL
        },
        CloudWatchLoggingOptions => {
          Enabled       => 1,                            # OPTIONAL
          LogGroupName  => 'MyLogGroupName',             # max: 512; OPTIONAL
          LogStreamName => 'MyLogStreamName',            # max: 512; OPTIONAL
        },    # OPTIONAL
        HECAcknowledgmentTimeoutInSeconds => 1,   # min: 180, max: 600; OPTIONAL
        ProcessingConfiguration           => {
          Enabled    => 1,                        # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',             # values: Lambda
              Parameters => [
                {
                  ParameterName => 'LambdaArn'
                  , # values: LambdaArn, NumberOfRetries, RoleArn, BufferSizeInMBs, BufferIntervalInSeconds
                  ParameterValue =>
                    'MyProcessorParameterValue',    # min: 1, max: 512

                },
                ...
              ],    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        S3BackupMode =>
          'FailedEventsOnly',    # values: FailedEventsOnly, AllEvents; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DeliveryStreamARN = $CreateDeliveryStreamOutput->DeliveryStreamARN;

    # Returns a L<Paws::Firehose::CreateDeliveryStreamOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/CreateDeliveryStream>

=head1 ATTRIBUTES


=head2 DeliveryStreamEncryptionConfigurationInput => L<Paws::Firehose::DeliveryStreamEncryptionConfigurationInput>

Used to specify the type and Amazon Resource Name (ARN) of the KMS key
needed for Server-Side Encryption (SSE).



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



=head2 HttpEndpointDestinationConfiguration => L<Paws::Firehose::HttpEndpointDestinationConfiguration>

Enables configuring Kinesis Firehose to deliver data to any HTTP
endpoint destination. You can specify only one destination.



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



=head2 Tags => ArrayRef[L<Paws::Firehose::Tag>]

A set of tags to assign to the delivery stream. A tag is a key-value
pair that you can define and assign to AWS resources. Tags are
metadata. For example, you can add friendly names and descriptions or
other types of information that can help you distinguish the delivery
stream. For more information about tags, see Using Cost Allocation Tags
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
in the AWS Billing and Cost Management User Guide.

You can specify up to 50 tags when creating a delivery stream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeliveryStream in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

