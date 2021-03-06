# Generated by default/object.tt
package Paws::DMS::IBMDb2Settings;
  use Moose;
  has CurrentLsn => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has MaxKBytesPerRead => (is => 'ro', isa => 'Int');
  has Password => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has SecretsManagerAccessRoleArn => (is => 'ro', isa => 'Str');
  has SecretsManagerSecretId => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');
  has SetDataCaptureChanges => (is => 'ro', isa => 'Bool');
  has Username => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::IBMDb2Settings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::IBMDb2Settings object:

  $service_obj->Method(Att1 => { CurrentLsn => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::IBMDb2Settings object:

  $result = $service_obj->Method(...);
  $result->Att1->CurrentLsn

=head1 DESCRIPTION

Provides information that defines an IBM Db2 LUW endpoint.

=head1 ATTRIBUTES


=head2 CurrentLsn => Str

For ongoing replication (CDC), use CurrentLSN to specify a log sequence
number (LSN) where you want the replication to start.


=head2 DatabaseName => Str

Database name for the endpoint.


=head2 MaxKBytesPerRead => Int

Maximum number of bytes per read, as a NUMBER value. The default is 64
KB.


=head2 Password => Str

Endpoint connection password.


=head2 Port => Int

Endpoint TCP port.


=head2 SecretsManagerAccessRoleArn => Str

The full Amazon Resource Name (ARN) of the IAM role that specifies AWS
DMS as the trusted entity and grants the required permissions to access
the value in C<SecretsManagerSecret>. C<SecretsManagerSecret> has the
value of the AWS Secrets Manager secret that allows access to the Db2
LUW endpoint.

You can specify one of two sets of values for these permissions. You
can specify the values for this setting and C<SecretsManagerSecretId>.
Or you can specify clear-text values for C<UserName>, C<Password>,
C<ServerName>, and C<Port>. You can't specify both. For more
information on creating this C<SecretsManagerSecret> and the
C<SecretsManagerAccessRoleArn> and C<SecretsManagerSecretId> required
to access it, see Using secrets to access AWS Database Migration
Service resources
(https://docs.aws.amazon.com/https:/docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager)
in the I<AWS Database Migration Service User Guide>.


=head2 SecretsManagerSecretId => Str

The full ARN, partial ARN, or friendly name of the
C<SecretsManagerSecret> that contains the Db2 LUW endpoint connection
details.


=head2 ServerName => Str

Fully qualified domain name of the endpoint.


=head2 SetDataCaptureChanges => Bool

Enables ongoing replication (CDC) as a BOOLEAN value. The default is
true.


=head2 Username => Str

Endpoint connection user name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

