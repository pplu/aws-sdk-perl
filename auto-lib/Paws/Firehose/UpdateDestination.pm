# Generated from json/callargs_class.tt

package Paws::Firehose::UpdateDestination;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Firehose::Types qw/Firehose_RedshiftDestinationUpdate Firehose_SplunkDestinationUpdate Firehose_S3DestinationUpdate Firehose_ExtendedS3DestinationUpdate Firehose_ElasticsearchDestinationUpdate/;
  has CurrentDeliveryStreamVersionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DeliveryStreamName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DestinationId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ElasticsearchDestinationUpdate => (is => 'ro', isa => Firehose_ElasticsearchDestinationUpdate, predicate => 1);
  has ExtendedS3DestinationUpdate => (is => 'ro', isa => Firehose_ExtendedS3DestinationUpdate, predicate => 1);
  has RedshiftDestinationUpdate => (is => 'ro', isa => Firehose_RedshiftDestinationUpdate, predicate => 1);
  has S3DestinationUpdate => (is => 'ro', isa => Firehose_S3DestinationUpdate, predicate => 1);
  has SplunkDestinationUpdate => (is => 'ro', isa => Firehose_SplunkDestinationUpdate, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDestination');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Firehose::UpdateDestinationOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationId' => {
                                    'type' => 'Str'
                                  },
               'RedshiftDestinationUpdate' => {
                                                'class' => 'Paws::Firehose::RedshiftDestinationUpdate',
                                                'type' => 'Firehose_RedshiftDestinationUpdate'
                                              },
               'ExtendedS3DestinationUpdate' => {
                                                  'class' => 'Paws::Firehose::ExtendedS3DestinationUpdate',
                                                  'type' => 'Firehose_ExtendedS3DestinationUpdate'
                                                },
               'ElasticsearchDestinationUpdate' => {
                                                     'class' => 'Paws::Firehose::ElasticsearchDestinationUpdate',
                                                     'type' => 'Firehose_ElasticsearchDestinationUpdate'
                                                   },
               'CurrentDeliveryStreamVersionId' => {
                                                     'type' => 'Str'
                                                   },
               'DeliveryStreamName' => {
                                         'type' => 'Str'
                                       },
               'S3DestinationUpdate' => {
                                          'class' => 'Paws::Firehose::S3DestinationUpdate',
                                          'type' => 'Firehose_S3DestinationUpdate'
                                        },
               'SplunkDestinationUpdate' => {
                                              'class' => 'Paws::Firehose::SplunkDestinationUpdate',
                                              'type' => 'Firehose_SplunkDestinationUpdate'
                                            }
             },
  'IsRequired' => {
                    'DestinationId' => 1,
                    'CurrentDeliveryStreamVersionId' => 1,
                    'DeliveryStreamName' => 1
                  }
}
;
    return $Params_map;
  }

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
        BufferingHints => {
          IntervalInSeconds => 1,    # min: 60, max: 900; OPTIONAL
          SizeInMBs         => 1,    # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
        },    # OPTIONAL
        DomainARN => 'MyElasticsearchDomainARN',    # min: 1, max: 512; OPTIONAL
        IndexName => 'MyElasticsearchIndexName',    # min: 1, max: 80; OPTIONAL
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
        RoleARN  => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
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
          RoleARN => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        TypeName => 'MyElasticsearchTypeName',    # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      ExtendedS3DestinationUpdate => {
        BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
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
                  'MyNonEmptyStringWithoutWhitespace' =>
                    'MyNonEmptyString',          # key: OPTIONAL
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
                  'MyNonEmptyStringWithoutWhitespace', ...    # OPTIONAL
                ],                                            # OPTIONAL
                BloomFilterFalsePositiveProbability => 1,     # max: 1; OPTIONAL
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
            CatalogId    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            DatabaseName => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            Region       => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            RoleARN      => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            TableName    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
            VersionId    => 'MyNonEmptyStringWithoutWhitespace',    # OPTIONAL
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
        RoleARN        => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3BackupMode   => 'Disabled',     # values: Disabled, Enabled; OPTIONAL
        S3BackupUpdate => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
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
          RoleARN => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      RedshiftDestinationUpdate => {
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
        },    # OPTIONAL
        ClusterJDBCURL => 'MyClusterJDBCURL',    # min: 1; OPTIONAL
        CopyCommand    => {
          DataTableName    => 'MyDataTableName',       # min: 1
          CopyOptions      => 'MyCopyOptions',         # OPTIONAL
          DataTableColumns => 'MyDataTableColumns',    # OPTIONAL
        },    # OPTIONAL
        Password                => 'MyPassword',    # min: 6; OPTIONAL
        ProcessingConfiguration => {
          Enabled    => 1,                          # OPTIONAL
          Processors => [
            {
              Type       => 'Lambda',               # values: Lambda
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
        RoleARN        => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        S3BackupMode   => 'Disabled',     # values: Disabled, Enabled; OPTIONAL
        S3BackupUpdate => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
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
          RoleARN => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
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
          RoleARN => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
        Username => 'MyUsername',    # min: 1; OPTIONAL
      },    # OPTIONAL
      S3DestinationUpdate => {
        BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
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
        ErrorOutputPrefix => 'MyErrorOutputPrefix', # OPTIONAL
        Prefix            => 'MyPrefix',            # OPTIONAL
        RoleARN           => 'MyRoleARN',           # min: 1, max: 512; OPTIONAL
      },    # OPTIONAL
      SplunkDestinationUpdate => {
        CloudWatchLoggingOptions => {
          Enabled       => 1,                    # OPTIONAL
          LogGroupName  => 'MyLogGroupName',     # OPTIONAL
          LogStreamName => 'MyLogStreamName',    # OPTIONAL
        },    # OPTIONAL
        HECAcknowledgmentTimeoutInSeconds => 1,   # min: 180, max: 600; OPTIONAL
        HECEndpoint     => 'MyHECEndpoint',       # OPTIONAL
        HECEndpointType => 'Raw',                 # values: Raw, Event; OPTIONAL
        HECToken        => 'MyHECToken',          # OPTIONAL
        ProcessingConfiguration => {
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
        S3Update => {
          BucketARN      => 'MyBucketARN',    # min: 1, max: 2048; OPTIONAL
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
          RoleARN => 'MyRoleARN',    # min: 1, max: 512; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/firehose/UpdateDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CurrentDeliveryStreamVersionId => Str

Obtain this value from the C<VersionId> result of
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



=head2 ElasticsearchDestinationUpdate => Firehose_ElasticsearchDestinationUpdate

Describes an update for a destination in Amazon ES.



=head2 ExtendedS3DestinationUpdate => Firehose_ExtendedS3DestinationUpdate

Describes an update for a destination in Amazon S3.



=head2 RedshiftDestinationUpdate => Firehose_RedshiftDestinationUpdate

Describes an update for a destination in Amazon Redshift.



=head2 S3DestinationUpdate => Firehose_S3DestinationUpdate

[Deprecated] Describes an update for a destination in Amazon S3.



=head2 SplunkDestinationUpdate => Firehose_SplunkDestinationUpdate

Describes an update for a destination in Splunk.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDestination in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

