package Paws::Signer::SigningConfigurationOverrides;
  use Moose;
  has EncryptionAlgorithm => (is => 'ro', isa => 'Str', request_name => 'encryptionAlgorithm', traits => ['NameInRequest']);
  has HashAlgorithm => (is => 'ro', isa => 'Str', request_name => 'hashAlgorithm', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Signer::SigningConfigurationOverrides

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Signer::SigningConfigurationOverrides object:

  $service_obj->Method(Att1 => { EncryptionAlgorithm => $value, ..., HashAlgorithm => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Signer::SigningConfigurationOverrides object:

  $result = $service_obj->Method(...);
  $result->Att1->EncryptionAlgorithm

=head1 DESCRIPTION

A signing configuration that overrides the default encryption or hash
algorithm of a signing job.

=head1 ATTRIBUTES


=head2 EncryptionAlgorithm => Str

  A specified override of the default encryption algorithm that is used
in an AWS Signer job.


=head2 HashAlgorithm => Str

  A specified override of the default hash algorithm that is used in an
AWS Signer job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Signer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

