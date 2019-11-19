# Generated from default/object.tt
package Paws::Signer::SigningConfiguration;
  use Moo;
  use Types::Standard qw//;
  use Paws::Signer::Types qw/Signer_HashAlgorithmOptions Signer_EncryptionAlgorithmOptions/;
  has EncryptionAlgorithmOptions => (is => 'ro', isa => Signer_EncryptionAlgorithmOptions, required => 1);
  has HashAlgorithmOptions => (is => 'ro', isa => Signer_HashAlgorithmOptions, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'HashAlgorithmOptions' => 1,
                    'EncryptionAlgorithmOptions' => 1
                  },
  'NameInRequest' => {
                       'HashAlgorithmOptions' => 'hashAlgorithmOptions',
                       'EncryptionAlgorithmOptions' => 'encryptionAlgorithmOptions'
                     },
  'types' => {
               'HashAlgorithmOptions' => {
                                           'class' => 'Paws::Signer::HashAlgorithmOptions',
                                           'type' => 'Signer_HashAlgorithmOptions'
                                         },
               'EncryptionAlgorithmOptions' => {
                                                 'type' => 'Signer_EncryptionAlgorithmOptions',
                                                 'class' => 'Paws::Signer::EncryptionAlgorithmOptions'
                                               }
             }
}
;
    return $Params_map;
  }


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

The configuration of a code signing operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EncryptionAlgorithmOptions => Signer_EncryptionAlgorithmOptions

  The encryption algorithm options that are available for a code signing
job.


=head2 B<REQUIRED> HashAlgorithmOptions => Signer_HashAlgorithmOptions

  The hash algorithm options that are available for a a code signing job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

