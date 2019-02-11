package Paws::ElasticTranscoder::Encryption;
  use Moose;
  has InitializationVector => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has KeyMd5 => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticTranscoder::Encryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticTranscoder::Encryption object:

  $service_obj->Method(Att1 => { InitializationVector => $value, ..., Mode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticTranscoder::Encryption object:

  $result = $service_obj->Method(...);
  $result->Att1->InitializationVector

=head1 DESCRIPTION

The encryption settings, if any, that are used for decrypting your
input files or encrypting your output files. If your input file is
encrypted, you must specify the mode that Elastic Transcoder uses to
decrypt your file, otherwise you must specify the mode you want Elastic
Transcoder to use to encrypt your output files.

=head1 ATTRIBUTES


=head2 InitializationVector => Str

  The series of random bits created by a random bit generator, unique for
every encryption operation, that you used to encrypt your input files
or that you want Elastic Transcoder to use to encrypt your output
files. The initialization vector must be base64-encoded, and it must be
exactly 16 bytes long before being base64-encoded.


=head2 Key => Str

  The data encryption key that you want Elastic Transcoder to use to
encrypt your output file, or that was used to encrypt your input file.
The key must be base64-encoded and it must be one of the following bit
lengths before being base64-encoded:

C<128>, C<192>, or C<256>.

The key must also be encrypted by using the Amazon Key Management
Service.


=head2 KeyMd5 => Str

  The MD5 digest of the key that you used to encrypt your input file, or
that you want Elastic Transcoder to use to encrypt your output file.
Elastic Transcoder uses the key digest as a checksum to make sure your
key was not corrupted in transit. The key MD5 must be base64-encoded,
and it must be exactly 16 bytes long before being base64-encoded.


=head2 Mode => Str

  The specific server-side encryption mode that you want Elastic
Transcoder to use when decrypting your input files or encrypting your
output files. Elastic Transcoder supports the following options:

=over

=item *

B<s3:> Amazon S3 creates and manages the keys used for encrypting your
files.

=item *

B<s3-aws-kms:> Amazon S3 calls the Amazon Key Management Service, which
creates and manages the keys that are used for encrypting your files.
If you specify C<s3-aws-kms> and you don't want to use the default key,
you must add the AWS-KMS key that you want to use to your pipeline.

=item *

B<aes-cbc-pkcs7:> A padded cipher-block mode of operation originally
used for HLS files.

=item *

B<aes-ctr:> AES Counter Mode.

=item *

B<aes-gcm:> AES Galois Counter Mode, a mode of operation that is an
authenticated encryption format, meaning that a file, key, or
initialization vector that has been tampered with fails the decryption
process.

=back

For all three AES options, you must provide the following settings,
which must be base64-encoded:

=over

=item *

B<Key>

=item *

B<Key MD5>

=item *

B<Initialization Vector>

=back

For the AES modes, your private encryption keys and your unencrypted
data are never stored by AWS; therefore, it is important that you
safely manage your encryption keys. If you lose them, you won't be able
to unencrypt your data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticTranscoder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

