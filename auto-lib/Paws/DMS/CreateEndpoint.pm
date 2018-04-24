
package Paws::DMS::CreateEndpoint;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has DynamoDbSettings => (is => 'ro', isa => 'Paws::DMS::DynamoDbSettings');
  has EndpointIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has EndpointType => (is => 'ro', isa => 'Str', required => 1);
  has EngineName => (is => 'ro', isa => 'Str', required => 1);
  has ExternalTableDefinition => (is => 'ro', isa => 'Str');
  has ExtraConnectionAttributes => (is => 'ro', isa => 'Str');
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

As an example:

  $service_obj->CreateEndpoint(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

The Amazon Resource Name (ARN) for the certificate.



=head2 DatabaseName => Str

The name of the endpoint database.



=head2 DynamoDbSettings => L<Paws::DMS::DynamoDbSettings>

Settings in JSON format for the target Amazon DynamoDB endpoint. For
more information about the available settings, see the B<Using Object
Mapping to Migrate Data to DynamoDB> section at Using an Amazon
DynamoDB Database as a Target for AWS Database Migration Service
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html).



=head2 B<REQUIRED> EndpointIdentifier => Str

The database endpoint identifier. Identifiers must begin with a letter;
must contain only ASCII letters, digits, and hyphens; and must not end
with a hyphen or contain two consecutive hyphens.



=head2 B<REQUIRED> EndpointType => Str

The type of endpoint.

Valid values are: C<"source">, C<"target">

=head2 B<REQUIRED> EngineName => Str

The type of engine for the endpoint. Valid values, depending on the
EndPointType, include mysql, oracle, postgres, mariadb, aurora,
aurora-postgresql, redshift, s3, db2, azuredb, sybase, dynamodb,
mongodb, and sqlserver.



=head2 ExternalTableDefinition => Str

The external table definition.



=head2 ExtraConnectionAttributes => Str

Additional attributes associated with the connection.



=head2 KmsKeyId => Str

The KMS key identifier that will be used to encrypt the connection
parameters. If you do not specify a value for the KmsKeyId parameter,
then AWS DMS will use your default encryption key. AWS KMS creates the
default encryption key for your AWS account. Your AWS account has a
different default encryption key for each AWS region.



=head2 MongoDbSettings => L<Paws::DMS::MongoDbSettings>

Settings in JSON format for the source MongoDB endpoint. For more
information about the available settings, see the B<Configuration
Properties When Using MongoDB as a Source for AWS Database Migration
Service> section at Using Amazon S3 as a Target for AWS Database
Migration Service
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html).



=head2 Password => Str

The password to be used to login to the endpoint database.



=head2 Port => Int

The port used by the endpoint database.



=head2 S3Settings => L<Paws::DMS::S3Settings>

Settings in JSON format for the target Amazon S3 endpoint. For more
information about the available settings, see the B<Extra Connection
Attributes> section at Using Amazon S3 as a Target for AWS Database
Migration Service
(http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html).



=head2 ServerName => Str

The name of the server where the endpoint database resides.



=head2 ServiceAccessRoleArn => Str

The Amazon Resource Name (ARN) for the service access role you want to
use to create the endpoint.



=head2 SslMode => Str

The SSL mode to use for the SSL connection.

SSL mode can be one of four values: none, require, verify-ca,
verify-full.

The default value is none.

Valid values are: C<"none">, C<"require">, C<"verify-ca">, C<"verify-full">

=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

Tags to be added to the endpoint.



=head2 Username => Str

The user name to be used to login to the endpoint database.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateEndpoint in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

