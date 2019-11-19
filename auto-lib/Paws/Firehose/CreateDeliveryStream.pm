# Generated from json/callargs_class.tt

package Paws::Firehose::CreateDeliveryStream;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Firehose::Types qw/Firehose_S3DestinationConfiguration Firehose_KinesisStreamSourceConfiguration Firehose_ElasticsearchDestinationConfiguration Firehose_SplunkDestinationConfiguration Firehose_RedshiftDestinationConfiguration Firehose_Tag Firehose_ExtendedS3DestinationConfiguration/;
  has DeliveryStreamName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeliveryStreamType => (is => 'ro', isa => Str, predicate => 1);
  has ElasticsearchDestinationConfiguration => (is => 'ro', isa => Firehose_ElasticsearchDestinationConfiguration, predicate => 1);
  has ExtendedS3DestinationConfiguration => (is => 'ro', isa => Firehose_ExtendedS3DestinationConfiguration, predicate => 1);
  has KinesisStreamSourceConfiguration => (is => 'ro', isa => Firehose_KinesisStreamSourceConfiguration, predicate => 1);
  has RedshiftDestinationConfiguration => (is => 'ro', isa => Firehose_RedshiftDestinationConfiguration, predicate => 1);
  has S3DestinationConfiguration => (is => 'ro', isa => Firehose_S3DestinationConfiguration, predicate => 1);
  has SplunkDestinationConfiguration => (is => 'ro', isa => Firehose_SplunkDestinationConfiguration, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Firehose_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateDeliveryStream');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Firehose::CreateDeliveryStreamOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DeliveryStreamName' => 1
                  },
  'types' => {
               'RedshiftDestinationConfiguration' => {
                                                       'type' => 'Firehose_RedshiftDestinationConfiguration',
                                                       'class' => 'Paws::Firehose::RedshiftDestinationConfiguration'
                                                     },
               'Tags' => {
                           'type' => 'ArrayRef[Firehose_Tag]',
                           'class' => 'Paws::Firehose::Tag'
                         },
               'KinesisStreamSourceConfiguration' => {
                                                       'type' => 'Firehose_KinesisStreamSourceConfiguration',
                                                       'class' => 'Paws::Firehose::KinesisStreamSourceConfiguration'
                                                     },
               'DeliveryStreamName' => {
                                         'type' => 'Str'
                                       },
               'DeliveryStreamType' => {
                                         'type' => 'Str'
                                       },
               'SplunkDestinationConfiguration' => {
                                                     'type' => 'Firehose_SplunkDestinationConfiguration',
                                                     'class' => 'Paws::Firehose::SplunkDestinationConfiguration'
                                                   },
               'ExtendedS3DestinationConfiguration' => {
                                                         'class' => 'Paws::Firehose::ExtendedS3DestinationConfiguration',
                                                         'type' => 'Firehose_ExtendedS3DestinationConfiguration'
                                                       },
               'S3DestinationConfiguration' => {
                                                 'type' => 'Firehose_S3DestinationConfiguration',
                                                 'class' => 'Paws::Firehose::S3DestinationConfiguration'
                                               },
               'ElasticsearchDestinationConfiguration' => {
                                                            'class' => 'Paws::Firehose::ElasticsearchDestinationConfiguration',
                                                            'type' => 'Firehose_ElasticsearchDestinationConfiguration'
                                                          }
             }
}
;
    return $Params_map;
  }

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
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # OPTIONAL
          Prefix            => 'MyPrefix',               # OPTIONAL
        },
        BufferingHints => {
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
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
              ],                                    # OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
        },    # OPTIONAL
        RetryOptions => {
          DurationInSeconds => 1,    # max: 7200; OPTIONAL
        },    # OPTIONAL
        S3BackupMode => 'FailedDocumentsOnly'
        ,     # values: FailedDocumentsOnly, AllDocuments; OPTIONAL
        TypeName => 'MyElasticsearchTypeName',    # max: 100; OPTIONAL
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
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
        },    # OPTIONAL
        CompressionFormat =>
          'UNCOMPRESSED',    # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        DataFormatConversionConfiguration => {
          Enabled                  => 1,    # OPTIONAL
          InputFormatConfiguration => {
            Deserializer => {
              HiveJsonSerDe => {
                TimestampFormats => [ 'MyNonEmptyString', ... ],    # OPTIONAL
              },    # OPTIONAL
              OpenXJsonSerDe => {
                CaseInsensitive         => 1,    # OPTIONAL
                ColumnToJsonKeyMappings => {
                  'MyNonEmptyStringWithoutWhitespace' => 'MyNonEmptyString',
                },                               # OPTIONAL
                ConvertDotsInJsonKeysToUnderscores => 1,    # OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          OutputFormatConfiguration => {
            Serializer => {
              OrcSerDe => {
                BlockSizeBytes => 1,    # min: 67108864; OPTIONAL
                BloomFilterColumns =>
                  [ 'MyNonEmptyStringWithoutWhitespace', ... ],    # OPTIONAL
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
                Compression =>
                  'UNCOMPRESSED', # values: UNCOMPRESSED, GZIP, SNAPPY; OPTIONAL
                EnableDictionaryCompression => 1,     # OPTIONAL
                MaxPaddingBytes             => 1,     # OPTIONAL
                PageSizeBytes               => 1,     # min: 65536; OPTIONAL
                WriterVersion               => 'V1',  # values: V1, V2; OPTIONAL
              },    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          SchemaConfiguration => {
            CatalogId    => 'MyNonEmptyStringWithoutWhitespace',
            DatabaseName => 'MyNonEmptyStringWithoutWhitespace',
            Region       => 'MyNonEmptyStringWithoutWhitespace',
            RoleARN      => 'MyNonEmptyStringWithoutWhitespace',
            TableName    => 'MyNonEmptyStringWithoutWhitespace',
            VersionId    => 'MyNonEmptyStringWithoutWhitespace',
          },    # OPTIONAL
        },    # OPTIONAL
        EncryptionConfiguration => {
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
        },    # OPTIONAL
        ErrorOutputPrefix       => 'MyErrorOutputPrefix',    # OPTIONAL
        Prefix                  => 'MyPrefix',               # OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                                   # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',                        # values: Lambda
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
        S3BackupConfiguration => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',      # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,           # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # OPTIONAL
          Prefix            => 'MyPrefix',               # OPTIONAL
        },
        S3BackupMode => 'Disabled',    # values: Disabled, Enabled; OPTIONAL
      },    # OPTIONAL
      KinesisStreamSourceConfiguration => {
        KinesisStreamARN => 'MyKinesisStreamARN',    # min: 1, max: 512
        RoleARN          => 'MyRoleARN',             # min: 1, max: 512

      },    # OPTIONAL
      RedshiftDestinationConfiguration => {
        ClusterJDBCURL => 'MyClusterJDBCURL',    # min: 1
        CopyCommand    => {
          DataTableName    => 'MyDataTableName',       # min: 1
          CopyOptions      => 'MyCopyOptions',         # OPTIONAL
          DataTableColumns => 'MyDataTableColumns',    # OPTIONAL
        },
        Password        => 'MyPassword',               # min: 6
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
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # OPTIONAL
          Prefix            => 'MyPrefix',               # OPTIONAL
        },
        Username                 => 'MyUsername',        # min: 1
        CloudWatchLoggingOptions => {
          Enabled       => 1,                            # OPTIONAL
          LogGroupName  => 'MyLogGroupName',             # OPTIONAL
          LogStreamName => 'MyLogStreamName',            # OPTIONAL
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
              ],                                    # OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
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
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # OPTIONAL
          Prefix            => 'MyPrefix',               # OPTIONAL
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
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
        },    # OPTIONAL
        CompressionFormat =>
          'UNCOMPRESSED',    # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
        EncryptionConfiguration => {
          KMSEncryptionConfig => {
            AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

          },    # OPTIONAL
          NoEncryptionConfig => 'NoEncryption', # values: NoEncryption; OPTIONAL
        },    # OPTIONAL
        ErrorOutputPrefix => 'MyErrorOutputPrefix',    # OPTIONAL
        Prefix            => 'MyPrefix',               # OPTIONAL
      },    # OPTIONAL
      SplunkDestinationConfiguration => {
        HECEndpoint     => 'MyHECEndpoint',
        HECEndpointType => 'Raw',             # values: Raw, Event
        HECToken        => 'MyHECToken',
        S3Configuration => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048
          RoleARN        => 'MyRoleARN',      # min: 1, max: 512
          BufferingHints => {
            IntervalInSeconds => 1,           # min: 60, max: 900; OPTIONAL
            SizeInMBs         => 1,           # min: 1, max: 128; OPTIONAL
          },    # OPTIONAL
          CloudWatchLoggingOptions => {
            Enabled       => 1,                    # OPTIONAL
            LogGroupName  => 'MyLogGroupName',     # OPTIONAL
            LogStreamName => 'MyLogStreamName',    # OPTIONAL
          },    # OPTIONAL
          CompressionFormat =>
            'UNCOMPRESSED',  # values: UNCOMPRESSED, GZIP, ZIP, Snappy; OPTIONAL
          EncryptionConfiguration => {
            KMSEncryptionConfig => {
              AWSKMSKeyARN => 'MyAWSKMSKeyARN',    # min: 1, max: 512

            },    # OPTIONAL
            NoEncryptionConfig =>
              'NoEncryption',    # values: NoEncryption; OPTIONAL
          },    # OPTIONAL
          ErrorOutputPrefix => 'MyErrorOutputPrefix',    # OPTIONAL
          Prefix            => 'MyPrefix',               # OPTIONAL
        },
        CloudWatchLoggingOptions => {
          Enabled       => 1,                            # OPTIONAL
          LogGroupName  => 'MyLogGroupName',             # OPTIONAL
          LogStreamName => 'MyLogStreamName',            # OPTIONAL
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
              ],                                    # OPTIONAL
            },
            ...
          ],                                        # OPTIONAL
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
      ],                            # OPTIONAL
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

=head2 ElasticsearchDestinationConfiguration => Firehose_ElasticsearchDestinationConfiguration

The destination in Amazon ES. You can specify only one destination.



=head2 ExtendedS3DestinationConfiguration => Firehose_ExtendedS3DestinationConfiguration

The destination in Amazon S3. You can specify only one destination.



=head2 KinesisStreamSourceConfiguration => Firehose_KinesisStreamSourceConfiguration

When a Kinesis data stream is used as the source for the delivery
stream, a KinesisStreamSourceConfiguration containing the Kinesis data
stream Amazon Resource Name (ARN) and the role ARN for the source
stream.



=head2 RedshiftDestinationConfiguration => Firehose_RedshiftDestinationConfiguration

The destination in Amazon Redshift. You can specify only one
destination.



=head2 S3DestinationConfiguration => Firehose_S3DestinationConfiguration

[Deprecated] The destination in Amazon S3. You can specify only one
destination.



=head2 SplunkDestinationConfiguration => Firehose_SplunkDestinationConfiguration

The destination in Splunk. You can specify only one destination.



=head2 Tags => ArrayRef[Firehose_Tag]

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

