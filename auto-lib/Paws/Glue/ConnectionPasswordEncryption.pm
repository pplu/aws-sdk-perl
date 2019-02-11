package Paws::Glue::ConnectionPasswordEncryption;
  use Moose;
  has AwsKmsKeyId => (is => 'ro', isa => 'Str');
  has ReturnConnectionPasswordEncrypted => (is => 'ro', isa => 'Bool', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ConnectionPasswordEncryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::ConnectionPasswordEncryption object:

  $service_obj->Method(Att1 => { AwsKmsKeyId => $value, ..., ReturnConnectionPasswordEncrypted => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::ConnectionPasswordEncryption object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsKmsKeyId

=head1 DESCRIPTION

The data structure used by the Data Catalog to encrypt the password as
part of C<CreateConnection> or C<UpdateConnection> and store it in the
C<ENCRYPTED_PASSWORD> field in the connection properties. You can
enable catalog encryption or only password encryption.

When a C<CreationConnection> request arrives containing a password, the
Data Catalog first encrypts the password using your KMS key, and then
encrypts the whole connection object again if catalog encryption is
also enabled.

This encryption requires that you set KMS key permissions to enable or
restrict access on the password key according to your security
requirements. For example, you may want only admin users to have
decrypt permission on the password key.

=head1 ATTRIBUTES


=head2 AwsKmsKeyId => Str

  A KMS key used to protect access to the JDBC source.

All users in your account should be granted the C<kms:encrypt>
permission to encrypt passwords before storing them in the Data Catalog
(through the AWS Glue C<CreateConnection> operation).

The decrypt permission should be granted only to KMS key admins and IAM
roles designated for AWS Glue crawlers.


=head2 B<REQUIRED> ReturnConnectionPasswordEncrypted => Bool

  When the C<ReturnConnectionPasswordEncrypted> flag is set to "true",
passwords remain encrypted in the responses of C<GetConnection> and
C<GetConnections>. This encryption takes effect independently from
catalog encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

