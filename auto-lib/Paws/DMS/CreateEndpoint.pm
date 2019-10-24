# Generated from json/callargs_class.tt

package Paws::DMS::CreateEndpoint;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::DMS::Types qw/DMS_KinesisSettings DMS_DmsTransferSettings DMS_RedshiftSettings DMS_ElasticsearchSettings DMS_Tag DMS_MongoDbSettings DMS_S3Settings DMS_DynamoDbSettings/;
  has CertificateArn => (is => 'ro', isa => Str, predicate => 1);
  has DatabaseName => (is => 'ro', isa => Str, predicate => 1);
  has DmsTransferSettings => (is => 'ro', isa => DMS_DmsTransferSettings, predicate => 1);
  has DynamoDbSettings => (is => 'ro', isa => DMS_DynamoDbSettings, predicate => 1);
  has ElasticsearchSettings => (is => 'ro', isa => DMS_ElasticsearchSettings, predicate => 1);
  has EndpointIdentifier => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EndpointType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EngineName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExternalTableDefinition => (is => 'ro', isa => Str, predicate => 1);
  has ExtraConnectionAttributes => (is => 'ro', isa => Str, predicate => 1);
  has KinesisSettings => (is => 'ro', isa => DMS_KinesisSettings, predicate => 1);
  has KmsKeyId => (is => 'ro', isa => Str, predicate => 1);
  has MongoDbSettings => (is => 'ro', isa => DMS_MongoDbSettings, predicate => 1);
  has Password => (is => 'ro', isa => Str, predicate => 1);
  has Port => (is => 'ro', isa => Int, predicate => 1);
  has RedshiftSettings => (is => 'ro', isa => DMS_RedshiftSettings, predicate => 1);
  has S3Settings => (is => 'ro', isa => DMS_S3Settings, predicate => 1);
  has ServerName => (is => 'ro', isa => Str, predicate => 1);
  has ServiceAccessRoleArn => (is => 'ro', isa => Str, predicate => 1);
  has SslMode => (is => 'ro', isa => Str, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[DMS_Tag], predicate => 1);
  has Username => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateEndpoint');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::DMS::CreateEndpointResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DynamoDbSettings' => {
                                       'class' => 'Paws::DMS::DynamoDbSettings',
                                       'type' => 'DMS_DynamoDbSettings'
                                     },
               'EndpointType' => {
                                   'type' => 'Str'
                                 },
               'RedshiftSettings' => {
                                       'class' => 'Paws::DMS::RedshiftSettings',
                                       'type' => 'DMS_RedshiftSettings'
                                     },
               'EndpointIdentifier' => {
                                         'type' => 'Str'
                                       },
               'Password' => {
                               'type' => 'Str'
                             },
               'Username' => {
                               'type' => 'Str'
                             },
               'SslMode' => {
                              'type' => 'Str'
                            },
               'MongoDbSettings' => {
                                      'class' => 'Paws::DMS::MongoDbSettings',
                                      'type' => 'DMS_MongoDbSettings'
                                    },
               'ExtraConnectionAttributes' => {
                                                'type' => 'Str'
                                              },
               'DmsTransferSettings' => {
                                          'class' => 'Paws::DMS::DmsTransferSettings',
                                          'type' => 'DMS_DmsTransferSettings'
                                        },
               'ElasticsearchSettings' => {
                                            'class' => 'Paws::DMS::ElasticsearchSettings',
                                            'type' => 'DMS_ElasticsearchSettings'
                                          },
               'ServerName' => {
                                 'type' => 'Str'
                               },
               'EngineName' => {
                                 'type' => 'Str'
                               },
               'KinesisSettings' => {
                                      'class' => 'Paws::DMS::KinesisSettings',
                                      'type' => 'DMS_KinesisSettings'
                                    },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'ExternalTableDefinition' => {
                                              'type' => 'Str'
                                            },
               'Port' => {
                           'type' => 'Int'
                         },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'ServiceAccessRoleArn' => {
                                           'type' => 'Str'
                                         },
               'Tags' => {
                           'class' => 'Paws::DMS::Tag',
                           'type' => 'ArrayRef[DMS_Tag]'
                         },
               'S3Settings' => {
                                 'class' => 'Paws::DMS::S3Settings',
                                 'type' => 'DMS_S3Settings'
                               },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'EngineName' => 1,
                    'EndpointType' => 1,
                    'EndpointIdentifier' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateEndpoint - Arguments for method CreateEndpoint on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateEndpoint on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateEndpoint.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $CreateEndpointResponse = $dms->CreateEndpoint(
      EndpointIdentifier  => 'MyString',
      EndpointType        => 'source',
      EngineName          => 'MyString',
      CertificateArn      => 'MyString',    # OPTIONAL
      DatabaseName        => 'MyString',    # OPTIONAL
      DmsTransferSettings => {
        BucketName           => 'MyString',
        ServiceAccessRoleArn => 'MyString',
      },                                    # OPTIONAL
      DynamoDbSettings => {
        ServiceAccessRoleArn => 'MyString',

      },                                    # OPTIONAL
      ElasticsearchSettings => {
        EndpointUri             => 'MyString',
        ServiceAccessRoleArn    => 'MyString',
        ErrorRetryDuration      => 1,            # OPTIONAL
        FullLoadErrorPercentage => 1,            # OPTIONAL
      },    # OPTIONAL
      ExternalTableDefinition   => 'MyString',    # OPTIONAL
      ExtraConnectionAttributes => 'MyString',    # OPTIONAL
      KinesisSettings           => {
        MessageFormat        => 'json',           # values: json; OPTIONAL
        ServiceAccessRoleArn => 'MyString',
        StreamArn            => 'MyString',
      },    # OPTIONAL
      KmsKeyId        => 'MyString',    # OPTIONAL
      MongoDbSettings => {
        AuthMechanism =>
          'default',    # values: default, mongodb_cr, scram_sha_1; OPTIONAL
        AuthSource        => 'MyString',
        AuthType          => 'no',              # values: no, password; OPTIONAL
        DatabaseName      => 'MyString',
        DocsToInvestigate => 'MyString',
        ExtractDocId      => 'MyString',
        KmsKeyId          => 'MyString',
        NestingLevel      => 'none',            # values: none, one; OPTIONAL
        Password          => 'MySecretString',  # OPTIONAL
        Port              => 1,                 # OPTIONAL
        ServerName        => 'MyString',
        Username          => 'MyString',
      },    # OPTIONAL
      Password         => 'MySecretString',    # OPTIONAL
      Port             => 1,                   # OPTIONAL
      RedshiftSettings => {
        AcceptAnyDate      => 1,            # OPTIONAL
        AfterConnectScript => 'MyString',
        BucketFolder       => 'MyString',
        BucketName         => 'MyString',
        ConnectionTimeout  => 1,            # OPTIONAL
        DatabaseName       => 'MyString',
        DateFormat         => 'MyString',
        EmptyAsNull        => 1,            # OPTIONAL
        EncryptionMode     => 'sse-s3',     # values: sse-s3, sse-kms; OPTIONAL
        FileTransferUploadStreams    => 1,                   # OPTIONAL
        LoadTimeout                  => 1,                   # OPTIONAL
        MaxFileSize                  => 1,                   # OPTIONAL
        Password                     => 'MySecretString',    # OPTIONAL
        Port                         => 1,                   # OPTIONAL
        RemoveQuotes                 => 1,                   # OPTIONAL
        ReplaceChars                 => 'MyString',
        ReplaceInvalidChars          => 'MyString',
        ServerName                   => 'MyString',
        ServerSideEncryptionKmsKeyId => 'MyString',
        ServiceAccessRoleArn         => 'MyString',
        TimeFormat                   => 'MyString',
        TrimBlanks                   => 1,                   # OPTIONAL
        TruncateColumns              => 1,                   # OPTIONAL
        Username                     => 'MyString',
        WriteBufferSize              => 1,                   # OPTIONAL
      },    # OPTIONAL
      S3Settings => {
        BucketFolder      => 'MyString',
        BucketName        => 'MyString',
        CdcInsertsOnly    => 1,            # OPTIONAL
        CompressionType   => 'none',       # values: none, gzip; OPTIONAL
        CsvDelimiter      => 'MyString',
        CsvRowDelimiter   => 'MyString',
        DataFormat        => 'csv',        # values: csv, parquet; OPTIONAL
        DataPageSize      => 1,            # OPTIONAL
        DictPageSizeLimit => 1,            # OPTIONAL
        EnableStatistics  => 1,            # OPTIONAL
        EncodingType =>
          'plain',   # values: plain, plain-dictionary, rle-dictionary; OPTIONAL
        EncryptionMode => 'sse-s3',    # values: sse-s3, sse-kms; OPTIONAL
        ExternalTableDefinition => 'MyString',
        ParquetVersion =>
          'parquet-1-0',    # values: parquet-1-0, parquet-2-0; OPTIONAL
        RowGroupLength               => 1,            # OPTIONAL
        ServerSideEncryptionKmsKeyId => 'MyString',
        ServiceAccessRoleArn         => 'MyString',
      },    # OPTIONAL
      ServerName           => 'MyString',    # OPTIONAL
      ServiceAccessRoleArn => 'MyString',    # OPTIONAL
      SslMode              => 'none',        # OPTIONAL
      Tags                 => [
        {
          Key   => 'MyString',
          Value => 'MyString',
        },
        ...
      ],                                     # OPTIONAL
      Username => 'MyString',                # OPTIONAL
    );

    # Results:
    my $Endpoint = $CreateEndpointResponse->Endpoint;

    # Returns a L<Paws::DMS::CreateEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateEndpoint>

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) for the certificate.



=head2 DatabaseName => Str

The name of the endpoint database.



=head2 DmsTransferSettings => DMS_DmsTransferSettings

The settings in JSON format for the DMS transfer type of source
endpoint.

Possible attributes include the following:

=over

=item *

C<serviceAccessRoleArn> - The IAM role that has permission to access
the Amazon S3 bucket.

=item *

C<bucketName> - The name of the S3 bucket to use.

=item *

C<compressionType> - An optional parameter to use GZIP to compress the
target files. To use GZIP, set this value to C<NONE> (the default). To
keep the files uncompressed, don't use this value.

=back

Shorthand syntax for these attributes is as follows:
C<ServiceAccessRoleArn=string,BucketName=string,CompressionType=string>

JSON syntax for these attributes is as follows: C<{
"ServiceAccessRoleArn": "string", "BucketName": "string",
"CompressionType": "none"|"gzip" }>



=head2 DynamoDbSettings => DMS_DynamoDbSettings

Settings in JSON format for the target Amazon DynamoDB endpoint. For
more information about the available settings, see Using Object Mapping
to Migrate Data to DynamoDB
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html)
in the I<AWS Database Migration Service User Guide.>



=head2 ElasticsearchSettings => DMS_ElasticsearchSettings

Settings in JSON format for the target Elasticsearch endpoint. For more
information about the available settings, see Extra Connection
Attributes When Using Elasticsearch as a Target for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration)
in the I<AWS Database Migration User Guide.>



=head2 B<REQUIRED> EndpointIdentifier => Str

The database endpoint identifier. Identifiers must begin with a letter;
must contain only ASCII letters, digits, and hyphens; and must not end
with a hyphen or contain two consecutive hyphens.



=head2 B<REQUIRED> EndpointType => Str

The type of endpoint.

Valid values are: C<"source">, C<"target">

=head2 B<REQUIRED> EngineName => Str

The type of engine for the endpoint. Valid values, depending on the
C<EndPointType> value, include C<mysql>, C<oracle>, C<postgres>,
C<mariadb>, C<aurora>, C<aurora-postgresql>, C<redshift>, C<s3>,
C<db2>, C<azuredb>, C<sybase>, C<dynamodb>, C<mongodb>, and
C<sqlserver>.



=head2 ExternalTableDefinition => Str

The external table definition.



=head2 ExtraConnectionAttributes => Str

Additional attributes associated with the connection.



=head2 KinesisSettings => DMS_KinesisSettings

Settings in JSON format for the target Amazon Kinesis Data Streams
endpoint. For more information about the available settings, see Using
Object Mapping to Migrate Data to a Kinesis Data Stream
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping
) in the I<AWS Database Migration User Guide.>



=head2 KmsKeyId => Str

The AWS KMS key identifier to use to encrypt the connection parameters.
If you don't specify a value for the C<KmsKeyId> parameter, then AWS
DMS uses your default encryption key. AWS KMS creates the default
encryption key for your AWS account. Your AWS account has a different
default encryption key for each AWS Region.



=head2 MongoDbSettings => DMS_MongoDbSettings

Settings in JSON format for the source MongoDB endpoint. For more
information about the available settings, see the configuration
properties section in Using MongoDB as a Target for AWS Database
Migration Service
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html)
in the I<AWS Database Migration Service User Guide.>



=head2 Password => Str

The password to be used to log in to the endpoint database.



=head2 Port => Int

The port used by the endpoint database.



=head2 RedshiftSettings => DMS_RedshiftSettings





=head2 S3Settings => DMS_S3Settings

Settings in JSON format for the target Amazon S3 endpoint. For more
information about the available settings, see Extra Connection
Attributes When Using Amazon S3 as a Target for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring)
in the I<AWS Database Migration Service User Guide.>



=head2 ServerName => Str

The name of the server where the endpoint database resides.



=head2 ServiceAccessRoleArn => Str

The Amazon Resource Name (ARN) for the service access role that you
want to use to create the endpoint.



=head2 SslMode => Str

The Secure Sockets Layer (SSL) mode to use for the SSL connection. The
SSL mode can be one of four values: C<none>, C<require>, C<verify-ca>,
C<verify-full>. The default value is C<none>.

Valid values are: C<"none">, C<"require">, C<"verify-ca">, C<"verify-full">

=head2 Tags => ArrayRef[DMS_Tag]

Tags to be added to the endpoint.



=head2 Username => Str

The user name to be used to log in to the endpoint database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

