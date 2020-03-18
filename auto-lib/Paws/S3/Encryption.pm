package Paws::S3::Encryption;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str', required => 1);
  has KMSContext => (is => 'ro', isa => 'Str');
  has KMSKeyId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Encryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Encryption object:

  $service_obj->Method(Att1 => { EncryptionType => $value, ..., KMSKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Encryption object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionType

=head1 DESCRIPTION

Contains the type of server-side encryption used.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionType => Str

  The server-side encryption algorithm used when storing job results in
Amazon S3 (for example, AES256, aws:kms).


=head2 KMSContext => Str

  If the encryption type is C<aws:kms>, this optional value can be used
to specify the encryption context for the restore results.


=head2 KMSKeyId => Str

  If the encryption type is C<aws:kms>, this optional value specifies the
ID of the symmetric customer managed AWS KMS CMK to use for encryption
of job results. Amazon S3 only supports symmetric CMKs. For more
information, see Using Symmetric and Asymmetric Keys
(https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html)
in the I<AWS Key Management Service Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

