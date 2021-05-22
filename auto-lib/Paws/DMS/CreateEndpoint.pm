
package Paws::DMS::CreateEndpoint;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DmsTransferSettings => (is => 'ro', isa => 'Paws::DMS::DmsTransferSettings');
  has DocDbSettings => (is => 'ro', isa => 'Paws::DMS::DocDbSettings');
  has DynamoDbSettings => (is => 'ro', isa => 'Paws::DMS::DynamoDbSettings');
  has ElasticsearchSettings => (is => 'ro', isa => 'Paws::DMS::ElasticsearchSettings');
  has EndpointIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EndpointType => (is => 'ro', isa => 'Str', required => 1);
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has ExternalTableDefinition => (is => 'ro', isa => 'Str');
  has ExtraConnectionAttributes => (is => 'ro', isa => 'Str');
  has IBMDb2Settings => (is => 'ro', isa => 'Paws::DMS::IBMDb2Settings');
  has KafkaSettings => (is => 'ro', isa => 'Paws::DMS::KafkaSettings');
  has KinesisSettings => (is => 'ro', isa => 'Paws::DMS::KinesisSettings');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MicrosoftSQLServerSettings => (is => 'ro', isa => 'Paws::DMS::MicrosoftSQLServerSettings');
  has MongoDbSettings => (is => 'ro', isa => 'Paws::DMS::MongoDbSettings');
  has MySQLSettings => (is => 'ro', isa => 'Paws::DMS::MySQLSettings');
  has NeptuneSettings => (is => 'ro', isa => 'Paws::DMS::NeptuneSettings');
  has OracleSettings => (is => 'ro', isa => 'Paws::DMS::OracleSettings');
  has Password => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PostgreSQLSettings => (is => 'ro', isa => 'Paws::DMS::PostgreSQLSettings');
  has RedshiftSettings => (is => 'ro', isa => 'Paws::DMS::RedshiftSettings');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
  has S3Settings => (is => 'ro', isa => 'Paws::DMS::S3Settings');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has SslMode => (is => 'ro', isa => 'Str');
  has SybaseSettings => (is => 'ro', isa => 'Paws::DMS::SybaseSettings');
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
    # Create endpoint
    # Creates an endpoint using the provided settings.
    my $CreateEndpointResponse = $dms->CreateEndpoint(
      'CertificateArn'            => '',
      'DatabaseName'              => 'testdb',
      'EndpointIdentifier'        => 'test-endpoint-1',
      'EndpointType'              => 'source',
      'EngineName'                => 'mysql',
      'ExtraConnectionAttributes' => '',
      'KmsKeyId' =>
'arn:aws:kms:us-east-1:123456789012:key/4c1731d6-5435-ed4d-be13-d53411a7cfbd',
      'Password'   => 'pasword',
      'Port'       => 3306,
      'ServerName' => 'mydb.cx1llnox7iyx.us-west-2.rds.amazonaws.com',
      'SslMode'    => 'require',
      'Tags'       => [

        {
          'Key'   => 'Acount',
          'Value' => 143327655
        }
      ],
      'Username' => 'username'
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



=head2 DocDbSettings => L<Paws::DMS::DocDbSettings>





=head2 DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>

Settings in JSON format for the target Amazon DynamoDB endpoint. For
information about other available settings, see Using Object Mapping to
Migrate Data to DynamoDB
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html)
in the I<AWS Database Migration Service User Guide.>



=head2 ElasticsearchSettings => L<Paws::DMS::ElasticsearchSettings>

Settings in JSON format for the target Elasticsearch endpoint. For more
information about the available settings, see Extra Connection
Attributes When Using Elasticsearch as a Target for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration)
in the I<AWS Database Migration Service User Guide>.



=head2 B<REQUIRED> EndpointIdentifier => Str

The database endpoint identifier. Identifiers must begin with a letter
and must contain only ASCII letters, digits, and hyphens. They can't
end with a hyphen, or contain two consecutive hyphens.



=head2 B<REQUIRED> EndpointType => Str

The type of endpoint. Valid values are C<source> and C<target>.

Valid values are: C<"source">, C<"target">

=head2 B<REQUIRED> EngineName => Str

The type of engine for the endpoint. Valid values, depending on the
C<EndpointType> value, include C<"mysql">, C<"oracle">, C<"postgres">,
C<"mariadb">, C<"aurora">, C<"aurora-postgresql">, C<"redshift">,
C<"s3">, C<"db2">, C<"azuredb">, C<"sybase">, C<"dynamodb">,
C<"mongodb">, C<"kinesis">, C<"kafka">, C<"elasticsearch">, C<"docdb">,
C<"sqlserver">, and C<"neptune">.



=head2 ExternalTableDefinition => Str

The external table definition.



=head2 ExtraConnectionAttributes => Str

Additional attributes associated with the connection. Each attribute is
specified as a name-value pair associated by an equal sign (=).
Multiple attributes are separated by a semicolon (;) with no additional
white space. For information on the attributes available for connecting
your source or target endpoint, see Working with AWS DMS Endpoints
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html)
in the I<AWS Database Migration Service User Guide.>



=head2 IBMDb2Settings => L<Paws::DMS::IBMDb2Settings>

Settings in JSON format for the source IBM Db2 LUW endpoint. For
information about other available settings, see Extra connection
attributes when using Db2 LUW as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html)
in the I<AWS Database Migration Service User Guide.>



=head2 KafkaSettings => L<Paws::DMS::KafkaSettings>

Settings in JSON format for the target Apache Kafka endpoint. For more
information about the available settings, see Using Apache Kafka as a
Target for AWS Database Migration Service
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html)
in the I<AWS Database Migration Service User Guide.>



=head2 KinesisSettings => L<Paws::DMS::KinesisSettings>

Settings in JSON format for the target endpoint for Amazon Kinesis Data
Streams. For more information about the available settings, see Using
Amazon Kinesis Data Streams as a Target for AWS Database Migration
Service
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html)
in the I<AWS Database Migration Service User Guide.>



=head2 KmsKeyId => Str

An AWS KMS key identifier that is used to encrypt the connection
parameters for the endpoint.

If you don't specify a value for the C<KmsKeyId> parameter, then AWS
DMS uses your default encryption key.

AWS KMS creates the default encryption key for your AWS account. Your
AWS account has a different default encryption key for each AWS Region.



=head2 MicrosoftSQLServerSettings => L<Paws::DMS::MicrosoftSQLServerSettings>

Settings in JSON format for the source and target Microsoft SQL Server
endpoint. For information about other available settings, see Extra
connection attributes when using SQL Server as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html)
and Extra connection attributes when using SQL Server as a target for
AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html)
in the I<AWS Database Migration Service User Guide.>



=head2 MongoDbSettings => L<Paws::DMS::MongoDbSettings>

Settings in JSON format for the source MongoDB endpoint. For more
information about the available settings, see Using MongoDB as a Target
for AWS Database Migration Service
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration)
in the I<AWS Database Migration Service User Guide.>



=head2 MySQLSettings => L<Paws::DMS::MySQLSettings>

Settings in JSON format for the source and target MySQL endpoint. For
information about other available settings, see Extra connection
attributes when using MySQL as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html)
and Extra connection attributes when using a MySQL-compatible database
as a target for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html)
in the I<AWS Database Migration Service User Guide.>



=head2 NeptuneSettings => L<Paws::DMS::NeptuneSettings>

Settings in JSON format for the target Amazon Neptune endpoint. For
more information about the available settings, see Specifying Endpoint
Settings for Amazon Neptune as a Target
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings)
in the I<AWS Database Migration Service User Guide.>



=head2 OracleSettings => L<Paws::DMS::OracleSettings>

Settings in JSON format for the source and target Oracle endpoint. For
information about other available settings, see Extra connection
attributes when using Oracle as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html)
and Extra connection attributes when using Oracle as a target for AWS
DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html)
in the I<AWS Database Migration Service User Guide.>



=head2 Password => Str

The password to be used to log in to the endpoint database.



=head2 Port => Int

The port used by the endpoint database.



=head2 PostgreSQLSettings => L<Paws::DMS::PostgreSQLSettings>

Settings in JSON format for the source and target PostgreSQL endpoint.
For information about other available settings, see Extra connection
attributes when using PostgreSQL as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html)
and Extra connection attributes when using PostgreSQL as a target for
AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html)
in the I<AWS Database Migration Service User Guide.>



=head2 RedshiftSettings => L<Paws::DMS::RedshiftSettings>





=head2 ResourceIdentifier => Str

A friendly name for the resource identifier at the end of the
C<EndpointArn> response parameter that is returned in the created
C<Endpoint> object. The value for this parameter can have up to 31
characters. It can contain only ASCII letters, digits, and hyphen
('-'). Also, it can't end with a hyphen or contain two consecutive
hyphens, and can only begin with a letter, such as C<Example-App-ARN1>.
For example, this value might result in the C<EndpointArn> value
C<arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1>. If you
don't specify a C<ResourceIdentifier> value, AWS DMS generates a
default identifier value for the end of C<EndpointArn>.



=head2 S3Settings => L<Paws::DMS::S3Settings>

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
default is C<none>

Valid values are: C<"none">, C<"require">, C<"verify-ca">, C<"verify-full">

=head2 SybaseSettings => L<Paws::DMS::SybaseSettings>

Settings in JSON format for the source and target SAP ASE endpoint. For
information about other available settings, see Extra connection
attributes when using SAP ASE as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html)
and Extra connection attributes when using SAP ASE as a target for AWS
DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html)
in the I<AWS Database Migration Service User Guide.>



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

One or more tags to be assigned to the endpoint.



=head2 Username => Str

The user name to be used to log in to the endpoint database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

