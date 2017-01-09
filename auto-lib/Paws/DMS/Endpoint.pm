package Paws::DMS::Endpoint;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has EndpointArn => (is => 'ro', isa => 'Str');
  has EndpointIdentifier => (is => 'ro', isa => 'Str');
  has EndpointType => (is => 'ro', isa => 'Str');
  has EngineName => (is => 'ro', isa => 'Str');
  has ExtraConnectionAttributes => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has ServerName => (is => 'ro', isa => 'Str');
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


=head2 EndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.


=head2 EndpointIdentifier => Str

  The database endpoint identifier. Identifiers must begin with a letter;
must contain only ASCII letters, digits, and hyphens; and must not end
with a hyphen or contain two consecutive hyphens.


=head2 EndpointType => Str

  The type of endpoint.


=head2 EngineName => Str

  The database engine name. Valid values include MYSQL, ORACLE, POSTGRES,
MARIADB, AURORA, REDSHIFT, SYBASE, and SQLSERVER.


=head2 ExtraConnectionAttributes => Str

  Additional connection attributes used to connect to the endpoint.


=head2 KmsKeyId => Str

  The KMS key identifier that will be used to encrypt the connection
parameters. If you do not specify a value for the KmsKeyId parameter,
then AWS DMS will use your default encryption key. AWS KMS creates the
default encryption key for your AWS account. Your AWS account has a
different default encryption key for each AWS region.


=head2 Port => Int

  The port value used to access the endpoint.


=head2 ServerName => Str

  The name of the server at the endpoint.


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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

