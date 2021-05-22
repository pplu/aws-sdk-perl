
package Paws::DMS::ModifyEndpoint;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DmsTransferSettings => (is => 'ro', isa => 'Paws::DMS::DmsTransferSettings');
  has DocDbSettings => (is => 'ro', isa => 'Paws::DMS::DocDbSettings');
  has DynamoDbSettings => (is => 'ro', isa => 'Paws::DMS::DynamoDbSettings');
  has ElasticsearchSettings => (is => 'ro', isa => 'Paws::DMS::ElasticsearchSettings');
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has EndpointIdentifier => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has ExternalTableDefinition => (is => 'ro', isa => 'Str');
  has ExtraConnectionAttributes => (is => 'ro', isa => 'Str');
  has IBMDb2Settings => (is => 'ro', isa => 'Paws::DMS::IBMDb2Settings');
  has KafkaSettings => (is => 'ro', isa => 'Paws::DMS::KafkaSettings');
  has KinesisSettings => (is => 'ro', isa => 'Paws::DMS::KinesisSettings');
  has MicrosoftSQLServerSettings => (is => 'ro', isa => 'Paws::DMS::MicrosoftSQLServerSettings');
  has MongoDbSettings => (is => 'ro', isa => 'Paws::DMS::MongoDbSettings');
  has MySQLSettings => (is => 'ro', isa => 'Paws::DMS::MySQLSettings');
  has NeptuneSettings => (is => 'ro', isa => 'Paws::DMS::NeptuneSettings');
  has OracleSettings => (is => 'ro', isa => 'Paws::DMS::OracleSettings');
  has Password => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PostgreSQLSettings => (is => 'ro', isa => 'Paws::DMS::PostgreSQLSettings');
  has RedshiftSettings => (is => 'ro', isa => 'Paws::DMS::RedshiftSettings');
  has S3Settings => (is => 'ro', isa => 'Paws::DMS::S3Settings');
  has ServerName => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');
  has SslMode => (is => 'ro', isa => 'Str');
  has SybaseSettings => (is => 'ro', isa => 'Paws::DMS::SybaseSettings');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyEndpoint - Arguments for method ModifyEndpoint on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyEndpoint on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyEndpoint.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    # Modify endpoint
    # Modifies the specified endpoint.
    my $ModifyEndpointResponse = $dms->ModifyEndpoint(
      'CertificateArn'            => '',
      'DatabaseName'              => '',
      'EndpointArn'               => '',
      'EndpointIdentifier'        => '',
      'EndpointType'              => 'source',
      'EngineName'                => '',
      'ExtraConnectionAttributes' => '',
      'Password'                  => '',
      'Port'                      => 123,
      'ServerName'                => '',
      'SslMode'                   => 'require',
      'Username'                  => ''
    );

    # Results:
    my $Endpoint = $ModifyEndpointResponse->Endpoint;

    # Returns a L<Paws::DMS::ModifyEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyEndpoint>

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) of the certificate used for SSL
connection.



=head2 DatabaseName => Str

The name of the endpoint database.



=head2 DmsTransferSettings => L<Paws::DMS::DmsTransferSettings>

The settings in JSON format for the DMS transfer type of source
endpoint.

Attributes include the following:

=over

=item *

serviceAccessRoleArn - The AWS Identity and Access Management (IAM)
role that has permission to access the Amazon S3 bucket.

=item *

BucketName - The name of the S3 bucket to use.

=item *

compressionType - An optional parameter to use GZIP to compress the
target files. Either set this parameter to NONE (the default) or don't
use it to leave the files uncompressed.

=back

Shorthand syntax for these settings is as follows:
C<ServiceAccessRoleArn=string
,BucketName=string,CompressionType=string>

JSON syntax for these settings is as follows: C<{
"ServiceAccessRoleArn": "string", "BucketName": "string",
"CompressionType": "none"|"gzip" }>



=head2 DocDbSettings => L<Paws::DMS::DocDbSettings>

Settings in JSON format for the source DocumentDB endpoint. For more
information about the available settings, see the configuration
properties section in Using DocumentDB as a Target for AWS Database
Migration Service
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html)
in the I<AWS Database Migration Service User Guide.>



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
in the I<AWS Database Migration Service User Guide.>



=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.



=head2 EndpointIdentifier => Str

The database endpoint identifier. Identifiers must begin with a letter
and must contain only ASCII letters, digits, and hyphens. They can't
end with a hyphen or contain two consecutive hyphens.



=head2 EndpointType => Str

The type of endpoint. Valid values are C<source> and C<target>.

Valid values are: C<"source">, C<"target">

=head2 EngineName => Str

The type of engine for the endpoint. Valid values, depending on the
EndpointType, include C<"mysql">, C<"oracle">, C<"postgres">,
C<"mariadb">, C<"aurora">, C<"aurora-postgresql">, C<"redshift">,
C<"s3">, C<"db2">, C<"azuredb">, C<"sybase">, C<"dynamodb">,
C<"mongodb">, C<"kinesis">, C<"kafka">, C<"elasticsearch">,
C<"documentdb">, C<"sqlserver">, and C<"neptune">.



=head2 ExternalTableDefinition => Str

The external table definition.



=head2 ExtraConnectionAttributes => Str

Additional attributes associated with the connection. To reset this
parameter, pass the empty string ("") as an argument.



=head2 IBMDb2Settings => L<Paws::DMS::IBMDb2Settings>

Settings in JSON format for the source IBM Db2 LUW endpoint. For
information about other available settings, see Extra connection
attributes when using Db2 LUW as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.ConnectionAttrib)
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



=head2 MicrosoftSQLServerSettings => L<Paws::DMS::MicrosoftSQLServerSettings>

Settings in JSON format for the source and target Microsoft SQL Server
endpoint. For information about other available settings, see Extra
connection attributes when using SQL Server as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.ConnectionAttrib)
and Extra connection attributes when using SQL Server as a target for
AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.ConnectionAttrib)
in the I<AWS Database Migration Service User Guide.>



=head2 MongoDbSettings => L<Paws::DMS::MongoDbSettings>

Settings in JSON format for the source MongoDB endpoint. For more
information about the available settings, see the configuration
properties section in Using MongoDB as a Target for AWS Database
Migration Service
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html)
in the I<AWS Database Migration Service User Guide.>



=head2 MySQLSettings => L<Paws::DMS::MySQLSettings>

Settings in JSON format for the source and target MySQL endpoint. For
information about other available settings, see Extra connection
attributes when using MySQL as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.ConnectionAttrib)
and Extra connection attributes when using a MySQL-compatible database
as a target for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.ConnectionAttrib)
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
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.ConnectionAttrib)
and Extra connection attributes when using Oracle as a target for AWS
DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.ConnectionAttrib)
in the I<AWS Database Migration Service User Guide.>



=head2 Password => Str

The password to be used to login to the endpoint database.



=head2 Port => Int

The port used by the endpoint database.



=head2 PostgreSQLSettings => L<Paws::DMS::PostgreSQLSettings>

Settings in JSON format for the source and target PostgreSQL endpoint.
For information about other available settings, see Extra connection
attributes when using PostgreSQL as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.ConnectionAttrib)
and Extra connection attributes when using PostgreSQL as a target for
AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.ConnectionAttrib)
in the I<AWS Database Migration Service User Guide.>



=head2 RedshiftSettings => L<Paws::DMS::RedshiftSettings>





=head2 S3Settings => L<Paws::DMS::S3Settings>

Settings in JSON format for the target Amazon S3 endpoint. For more
information about the available settings, see Extra Connection
Attributes When Using Amazon S3 as a Target for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring)
in the I<AWS Database Migration Service User Guide.>



=head2 ServerName => Str

The name of the server where the endpoint database resides.



=head2 ServiceAccessRoleArn => Str

The Amazon Resource Name (ARN) for the service access role you want to
use to modify the endpoint.



=head2 SslMode => Str

The SSL mode used to connect to the endpoint. The default value is
C<none>.

Valid values are: C<"none">, C<"require">, C<"verify-ca">, C<"verify-full">

=head2 SybaseSettings => L<Paws::DMS::SybaseSettings>

Settings in JSON format for the source and target SAP ASE endpoint. For
information about other available settings, see Extra connection
attributes when using SAP ASE as a source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.ConnectionAttrib)
and Extra connection attributes when using SAP ASE as a target for AWS
DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.ConnectionAttrib)
in the I<AWS Database Migration Service User Guide.>



=head2 Username => Str

The user name to be used to login to the endpoint database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyEndpoint in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

