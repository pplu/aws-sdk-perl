package Paws::Signer::SigningConfiguration;
  use Moose;
  has EncryptionAlgorithmOptions => (is => 'ro', isa => 'Paws::Signer::EncryptionAlgorithmOptions', request_name => 'encryptionAlgorithmOptions', traits => ['NameInRequest'], required => 1);
  has HashAlgorithmOptions => (is => 'ro', isa => 'Paws::Signer::HashAlgorithmOptions', request_name => 'hashAlgorithmOptions', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningConfiguration object:

  $service_obj->Method(Att1 => { EncryptionAlgorithmOptions => $value, ..., HashAlgorithmOptions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionAlgorithmOptions

=head1 DESCRIPTION

The configuration of an AWS Signer operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionAlgorithmOptions => L<Paws::Signer::EncryptionAlgorithmOptions>

  The encryption algorithm options that are available for an AWS Signer
job.


=head2 B<REQUIRED> HashAlgorithmOptions => L<Paws::Signer::HashAlgorithmOptions>

  The hash algorithm options that are available for an AWS Signer job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

