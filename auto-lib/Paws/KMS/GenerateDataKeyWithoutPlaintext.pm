
package Paws::KMS::GenerateDataKeyWithoutPlaintext {
  use Moose;
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeySpec => (is => 'ro', isa => 'Str');
  has NumberOfBytes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataKeyWithoutPlaintext');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateDataKeyWithoutPlaintextResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKeyWithoutPlaintext - Arguments for method GenerateDataKeyWithoutPlaintext on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataKeyWithoutPlaintext on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method GenerateDataKeyWithoutPlaintext.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataKeyWithoutPlaintext.

As an example:

  $service_obj->GenerateDataKeyWithoutPlaintext(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 EncryptionContext => Paws::KMS::EncryptionContextType

  

Name:value pair that contains additional data to be authenticated
during the encryption and decryption processes.










=head2 GrantTokens => ArrayRef[Str]

  

A list of grant tokens that represent grants which can be used to
provide long term permissions to generate a key.










=head2 B<REQUIRED> KeyId => Str

  

Unique identifier of the key. This can be an ARN, an alias, or a
globally unique identifier.










=head2 KeySpec => Str

  

Value that identifies the encryption algorithm and key size. Currently
this can be AES_128 or AES_256.










=head2 NumberOfBytes => Int

  

Integer that contains the number of bytes to generate. Common values
are 128, 256, 512, 1024 and so on.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for GenerateDataKeyWithoutPlaintext in Paws::KMS

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

