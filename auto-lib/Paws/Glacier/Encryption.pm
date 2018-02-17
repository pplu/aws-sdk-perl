package Paws::Glacier::Encryption;
  use Moose;
  has EncryptionType => (is => 'ro', isa => 'Str');
  has KMSContext => (is => 'ro', isa => 'Str');
  has KMSKeyId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::Encryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::Encryption object:

  $service_obj->Method(Att1 => { EncryptionType => $value, ..., KMSKeyId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::Encryption object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionType

=head1 DESCRIPTION

Contains information about the encryption used to store the job results
in Amazon S3.

=head1 ATTRIBUTES


=head2 EncryptionType => Str

  The server-side encryption algorithm used when storing job results in
Amazon S3, for example C<AES256> or C<aws:kms>.


=head2 KMSContext => Str

  Optional. If the encryption type is C<aws:kms>, you can use this value
to specify the encryption context for the job results.


=head2 KMSKeyId => Str

  The AWS KMS key ID to use for object encryption. All GET and PUT
requests for an object protected by AWS KMS fail if not made by using
Secure Sockets Layer (SSL) or Signature Version 4.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

