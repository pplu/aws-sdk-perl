package Paws::Athena::EncryptionConfiguration;
  use Moose;
  has EncryptionOption => (is => 'ro', isa => 'Str', required => 1);
  has KmsKey => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::EncryptionConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::EncryptionConfiguration object:

  $service_obj->Method(Att1 => { EncryptionOption => $value, ..., KmsKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::EncryptionConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionOption

=head1 DESCRIPTION

If query results are encrypted in Amazon S3, indicates the encryption
option used (for example, C<SSE-KMS> or C<CSE-KMS>) and key
information.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionOption => Str

  Indicates whether Amazon S3 server-side encryption with Amazon
S3-managed keys (C<SSE-S3>), server-side encryption with KMS-managed
keys (C<SSE-KMS>), or client-side encryption with KMS-managed keys
(CSE-KMS) is used.


=head2 KmsKey => Str

  For C<SSE-KMS> and C<CSE-KMS>, this is the KMS key ARN or ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

