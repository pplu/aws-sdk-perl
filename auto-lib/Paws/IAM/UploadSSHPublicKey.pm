
package Paws::IAM::UploadSSHPublicKey;
  use Moose;
  has SSHPublicKeyBody => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadSSHPublicKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::UploadSSHPublicKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UploadSSHPublicKeyResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UploadSSHPublicKey - Arguments for method UploadSSHPublicKey on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadSSHPublicKey on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UploadSSHPublicKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadSSHPublicKey.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $UploadSSHPublicKeyResponse = $iam->UploadSSHPublicKey(
      SSHPublicKeyBody => 'MypublicKeyMaterialType',
      UserName         => 'MyuserNameType',

    );

    # Results:
    my $SSHPublicKey = $UploadSSHPublicKeyResponse->SSHPublicKey;

    # Returns a L<Paws::IAM::UploadSSHPublicKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UploadSSHPublicKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SSHPublicKeyBody => Str

The SSH public key. The public key must be encoded in ssh-rsa format or
PEM format. The minimum bit-length of the public key is 2048 bits. For
example, you can generate a 2048-bit key, and the resulting PEM file is
1679 bytes long.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back




=head2 B<REQUIRED> UserName => Str

The name of the IAM user to associate the SSH public key with.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadSSHPublicKey in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

