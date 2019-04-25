
package Paws::DMS::CreateEndpoint;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DmsTransferSettings => (is => 'ro', isa => 'Paws::DMS::DmsTransferSettings');
  has DynamoDbSettings => (is => 'ro', isa => 'Paws::DMS::DynamoDbSettings');
  has ElasticsearchSettings => (is => 'ro', isa => 'Paws::DMS::ElasticsearchSettings');
  has EndpointIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EndpointType => (is => 'ro', isa => 'Str', required => 1);
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has ExternalTableDefinition => (is => 'ro', isa => 'Str');
  has ExtraConnectionAttributes => (is => 'ro', isa => 'Str');
  has KinesisSettings => (is => 'ro', isa => 'Paws::DMS::KinesisSettings');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MongoDbSettings => (is => 'ro', isa => 'Paws::DMS::MongoDbSettings');
  has Password => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has S3Settings => (is => 'ro', isa => 'Paws::DMS::S3Settings');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has SslMode => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
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
      Password   => 'MySecretString',    # OPTIONAL
      Port       => 1,                   # OPTIONAL
      S3Settings => {
        BucketFolder            => 'MyString',
        BucketName              => 'MyString',
        CompressionType         => 'none',       # values: none, gzip; OPTIONAL
        CsvDelimiter            => 'MyString',
        CsvRowDelimiter         => 'MyString',
        ExternalTableDefinition => 'MyString',
        ServiceAccessRoleArn    => 'MyString',
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

Settings in JSON format for the target Amazon DynamoDB endpoint. For
more information about the available settings, see Using Object Mapping
to Migrate Data to DynamoDB
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html)
in the I<AWS Database Migration Service User Guide.>



=head2 ElasticsearchSettings => L<Paws::DMS::ElasticsearchSettings>

Settings in JSON format for the target Elasticsearch endpoint. For more
information about the available settings, see Extra Connection
Attributes When Using Elasticsearch as a Target for AWS DMS
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration)
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



=head2 KinesisSettings => L<Paws::DMS::KinesisSettings>

Settings in JSON format for the target Amazon Kinesis Data Streams
endpoint. For more information about the available settings, see Using
Object Mapping to Migrate Data to a Kinesis Data Stream
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping
) in the I<AWS Database Migration User Guide.>



=head2 KmsKeyId => Str

The AWS KMS key identifier to use to encrypt the connection parameters.
If you don't specify a value for the C<KmsKeyId> parameter, then AWS
DMS uses your default encryption key. AWS KMS creates the default
encryption key for your AWS account. Your AWS account has a different
default encryption key for each AWS Region.



=head2 MongoDbSettings => L<Paws::DMS::MongoDbSettings>

Settings in JSON format for the source MongoDB endpoint. For more
information about the available settings, see the configuration
properties section in Using MongoDB as a Target for AWS Database
Migration Service
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html)
in the I<AWS Database Migration Service User Guide.>



=head2 Password => Str

The password to be used to log in to the endpoint database.



=head2 Port => Int

The port used by the endpoint database.



=head2 S3Settings => L<Paws::DMS::S3Settings>

Settings in JSON format for the target Amazon S3 endpoint. For more
information about the available settings, see Extra Connection
Attributes When Using Amazon S3 as a Target for AWS DMS
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring)
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

=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

Tags to be added to the endpoint.



=head2 Username => Str

The user name to be used to log in to the endpoint database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

