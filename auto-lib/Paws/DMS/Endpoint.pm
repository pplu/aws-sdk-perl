package Paws::DMS::Endpoint;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DmsTransferSettings => (is => 'ro', isa => 'Paws::DMS::DmsTransferSettings');
  has DynamoDbSettings => (is => 'ro', isa => 'Paws::DMS::DynamoDbSettings');
  has ElasticsearchSettings => (is => 'ro', isa => 'Paws::DMS::ElasticsearchSettings');
  has EndpointArn => (is => 'ro', isa => 'Str');
  has EndpointIdentifier => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has EngineDisplayName => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has ExternalId => (is => 'ro', isa => 'Str');
  has ExternalTableDefinition => (is => 'ro', isa => 'Str');
  has ExtraConnectionAttributes => (is => 'ro', isa => 'Str');
  has KinesisSettings => (is => 'ro', isa => 'Paws::DMS::KinesisSettings');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MongoDbSettings => (is => 'ro', isa => 'Paws::DMS::MongoDbSettings');
  has Port => (is => 'ro', isa => 'Int');
  has S3Settings => (is => 'ro', isa => 'Paws::DMS::S3Settings');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has SslMode => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
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


=head2 DmsTransferSettings => L<Paws::DMS::DmsTransferSettings>

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


=head2 DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>

  The settings for the target DynamoDB database. For more information,
see the C<DynamoDBSettings> structure.


=head2 ElasticsearchSettings => L<Paws::DMS::ElasticsearchSettings>

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

  The type of endpoint.


=head2 EngineDisplayName => Str

  The expanded name for the engine name. For example, if the
C<EngineName> parameter is "aurora," this value would be "Amazon Aurora
MySQL."


=head2 EngineName => Str

  The database engine name. Valid values, depending on the EndPointType,
include mysql, oracle, postgres, mariadb, aurora, aurora-postgresql,
redshift, s3, db2, azuredb, sybase, sybase, dynamodb, mongodb, and
sqlserver.


=head2 ExternalId => Str

  Value returned by a call to CreateEndpoint that can be used for
cross-account validation. Use it on a subsequent call to CreateEndpoint
to create the endpoint with a cross-account.


=head2 ExternalTableDefinition => Str

  The external table definition.


=head2 ExtraConnectionAttributes => Str

  Additional connection attributes used to connect to the endpoint.


=head2 KinesisSettings => L<Paws::DMS::KinesisSettings>

  The settings for the Amazon Kinesis source endpoint. For more
information, see the C<KinesisSettings> structure.


=head2 KmsKeyId => Str

  The AWS KMS key identifier that is used to encrypt the content on the
replication instance. If you don't specify a value for the C<KmsKeyId>
parameter, then AWS DMS uses your default encryption key. AWS KMS
creates the default encryption key for your AWS account. Your AWS
account has a different default encryption key for each AWS Region.


=head2 MongoDbSettings => L<Paws::DMS::MongoDbSettings>

  The settings for the MongoDB source endpoint. For more information, see
the C<MongoDbSettings> structure.


=head2 Port => Int

  The port value used to access the endpoint.


=head2 S3Settings => L<Paws::DMS::S3Settings>

  The settings for the S3 target endpoint. For more information, see the
C<S3Settings> structure.


=head2 ServerName => Str

  The name of the server at the endpoint.


=head2 ServiceAccessRoleArn => Str

  The Amazon Resource Name (ARN) used by the service access IAM role.


=head2 SslMode => Str

  The SSL mode used to connect to the endpoint.

SSL mode can be one of four values: none, require, verify-ca,
verify-full.

The default value is none.


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

