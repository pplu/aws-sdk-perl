package Paws::MediaConvert::InputDecryptionSettings;
  use Moose;
  has DecryptionMode => (is => 'ro', isa => 'Str', request_name => 'decryptionMode', traits => ['NameInRequest']);
  has EncryptedDecryptionKey => (is => 'ro', isa => 'Str', request_name => 'encryptedDecryptionKey', traits => ['NameInRequest']);
  has InitializationVector => (is => 'ro', isa => 'Str', request_name => 'initializationVector', traits => ['NameInRequest']);
  has KmsKeyRegion => (is => 'ro', isa => 'Str', request_name => 'kmsKeyRegion', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::InputDecryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::InputDecryptionSettings object:

  $service_obj->Method(Att1 => { DecryptionMode => $value, ..., KmsKeyRegion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::InputDecryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->DecryptionMode

=head1 DESCRIPTION

Specify the decryption settings used to decrypt encrypted input

=head1 ATTRIBUTES


=head2 DecryptionMode => Str

  


=head2 EncryptedDecryptionKey => Str

  Decryption key either 128 or 192 or 256 bits encrypted with KMS


=head2 InitializationVector => Str

  Initialization Vector 96 bits (CTR/GCM mode only) or 128 bits.


=head2 KmsKeyRegion => Str

  The AWS region in which decryption key was encrypted with KMS



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

