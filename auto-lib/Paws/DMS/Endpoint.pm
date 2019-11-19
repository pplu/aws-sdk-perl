# Generated from default/object.tt
package Paws::DMS::Endpoint;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DMS::Types qw/DMS_RedshiftSettings DMS_KinesisSettings DMS_MongoDbSettings DMS_DynamoDbSettings DMS_ElasticsearchSettings DMS_DmsTransferSettings DMS_S3Settings/;
  has CertificateArn => (is => 'ro', isa => Str);
  has DatabaseName => (is => 'ro', isa => Str);
  has DmsTransferSettings => (is => 'ro', isa => DMS_DmsTransferSettings);
  has DynamoDbSettings => (is => 'ro', isa => DMS_DynamoDbSettings);
  has ElasticsearchSettings => (is => 'ro', isa => DMS_ElasticsearchSettings);
  has EndpointArn => (is => 'ro', isa => Str);
  has EndpointIdentifier => (is => 'ro', isa => Str);
  has EndpointType => (is => 'ro', isa => Str);
  has EngineDisplayName => (is => 'ro', isa => Str);
  has EngineName => (is => 'ro', isa => Str);
  has ExternalId => (is => 'ro', isa => Str);
  has ExternalTableDefinition => (is => 'ro', isa => Str);
  has ExtraConnectionAttributes => (is => 'ro', isa => Str);
  has KinesisSettings => (is => 'ro', isa => DMS_KinesisSettings);
  has KmsKeyId => (is => 'ro', isa => Str);
  has MongoDbSettings => (is => 'ro', isa => DMS_MongoDbSettings);
  has Port => (is => 'ro', isa => Int);
  has RedshiftSettings => (is => 'ro', isa => DMS_RedshiftSettings);
  has S3Settings => (is => 'ro', isa => DMS_S3Settings);
  has ServerName => (is => 'ro', isa => Str);
  has ServiceAccessRoleArn => (is => 'ro', isa => Str);
  has SslMode => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Username => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EndpointArn' => {
                                  'type' => 'Str'
                                },
               'Port' => {
                           'type' => 'Int'
                         },
               'SslMode' => {
                              'type' => 'Str'
                            },
               'DmsTransferSettings' => {
                                          'type' => 'DMS_DmsTransferSettings',
                                          'class' => 'Paws::DMS::DmsTransferSettings'
                                        },
               'RedshiftSettings' => {
                                       'class' => 'Paws::DMS::RedshiftSettings',
                                       'type' => 'DMS_RedshiftSettings'
                                     },
               'ServiceAccessRoleArn' => {
                                           'type' => 'Str'
                                         },
               'DynamoDbSettings' => {
                                       'class' => 'Paws::DMS::DynamoDbSettings',
                                       'type' => 'DMS_DynamoDbSettings'
                                     },
               'ServerName' => {
                                 'type' => 'Str'
                               },
               'DatabaseName' => {
                                   'type' => 'Str'
                                 },
               'KinesisSettings' => {
                                      'class' => 'Paws::DMS::KinesisSettings',
                                      'type' => 'DMS_KinesisSettings'
                                    },
               'EngineDisplayName' => {
                                        'type' => 'Str'
                                      },
               'ExtraConnectionAttributes' => {
                                                'type' => 'Str'
                                              },
               'ExternalTableDefinition' => {
                                              'type' => 'Str'
                                            },
               'ElasticsearchSettings' => {
                                            'class' => 'Paws::DMS::ElasticsearchSettings',
                                            'type' => 'DMS_ElasticsearchSettings'
                                          },
               'S3Settings' => {
                                 'class' => 'Paws::DMS::S3Settings',
                                 'type' => 'DMS_S3Settings'
                               },
               'KmsKeyId' => {
                               'type' => 'Str'
                             },
               'MongoDbSettings' => {
                                      'class' => 'Paws::DMS::MongoDbSettings',
                                      'type' => 'DMS_MongoDbSettings'
                                    },
               'EngineName' => {
                                 'type' => 'Str'
                               },
               'EndpointType' => {
                                   'type' => 'Str'
                                 },
               'CertificateArn' => {
                                     'type' => 'Str'
                                   },
               'EndpointIdentifier' => {
                                         'type' => 'Str'
                                       },
               'Status' => {
                             'type' => 'Str'
                           },
               'ExternalId' => {
                                 'type' => 'Str'
                               },
               'Username' => {
                               'type' => 'Str'
                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::Endpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::Endpoint object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::Endpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  The Amazon Resource Name (ARN) used for SSL connection to the endpoint.


=head2 DatabaseName => Str

  The name of the database at the endpoint.


=head2 DmsTransferSettings => DMS_DmsTransferSettings

  The settings in JSON format for the DMS transfer type of source
endpoint.

Possible settings include the following:

=over

=item *

C<ServiceAccessRoleArn> - The IAM role that has permission to access
the Amazon S3 bucket.

=item *

C<BucketName> - The name of the S3 bucket to use.

=item *

C<CompressionType> - An optional parameter to use GZIP to compress the
target files. To use GZIP, set this value to C<NONE> (the default). To
keep the files uncompressed, don't use this value.

=back

Shorthand syntax for these settings is as follows:
C<ServiceAccessRoleArn=string,BucketName=string,CompressionType=string>

JSON syntax for these settings is as follows: C<{
"ServiceAccessRoleArn": "string", "BucketName": "string",
"CompressionType": "none"|"gzip" }>


=head2 DynamoDbSettings => DMS_DynamoDbSettings

  The settings for the target DynamoDB database. For more information,
see the C<DynamoDBSettings> structure.


=head2 ElasticsearchSettings => DMS_ElasticsearchSettings

  The settings for the Elasticsearch source endpoint. For more
information, see the C<ElasticsearchSettings> structure.


=head2 EndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.


=head2 EndpointIdentifier => Str

  The database endpoint identifier. Identifiers must begin with a letter;
must contain only ASCII letters, digits, and hyphens; and must not end
with a hyphen or contain two consecutive hyphens.


=head2 EndpointType => Str

  The type of endpoint. Valid values are C<source> and C<target>.


=head2 EngineDisplayName => Str

  The expanded name for the engine name. For example, if the
C<EngineName> parameter is "aurora," this value would be "Amazon Aurora
MySQL."


=head2 EngineName => Str

  The database engine name. Valid values, depending on the EndpointType,
include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql,
redshift, s3, db2, azuredb, sybase, dynamodb, mongodb, and sqlserver.


=head2 ExternalId => Str

  Value returned by a call to CreateEndpoint that can be used for
cross-account validation. Use it on a subsequent call to CreateEndpoint
to create the endpoint with a cross-account.


=head2 ExternalTableDefinition => Str

  The external table definition.


=head2 ExtraConnectionAttributes => Str

  Additional connection attributes used to connect to the endpoint.


=head2 KinesisSettings => DMS_KinesisSettings

  The settings for the Amazon Kinesis source endpoint. For more
information, see the C<KinesisSettings> structure.


=head2 KmsKeyId => Str

  An AWS KMS key identifier that is used to encrypt the connection
parameters for the endpoint.

If you don't specify a value for the C<KmsKeyId> parameter, then AWS
DMS uses your default encryption key.

AWS KMS creates the default encryption key for your AWS account. Your
AWS account has a different default encryption key for each AWS Region.


=head2 MongoDbSettings => DMS_MongoDbSettings

  The settings for the MongoDB source endpoint. For more information, see
the C<MongoDbSettings> structure.


=head2 Port => Int

  The port value used to access the endpoint.


=head2 RedshiftSettings => DMS_RedshiftSettings

  Settings for the Amazon Redshift endpoint.


=head2 S3Settings => DMS_S3Settings

  The settings for the S3 target endpoint. For more information, see the
C<S3Settings> structure.


=head2 ServerName => Str

  The name of the server at the endpoint.


=head2 ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) used by the service access IAM role.


=head2 SslMode => Str

  The SSL mode used to connect to the endpoint. The default value is
C<none>.


=head2 Status => Str

  The status of the endpoint.


=head2 Username => Str

  The user name used to connect to the endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

