package Paws::Lightsail::PasswordData;
  use Moose;
  has Ciphertext => (is => 'ro', isa => 'Str', request_name => 'ciphertext', traits => ['NameInRequest']);
  has KeyPairName => (is => 'ro', isa => 'Str', request_name => 'keyPairName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PasswordData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::PasswordData object:

  $service_obj->Method(Att1 => { Ciphertext => $value, ..., KeyPairName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::PasswordData object:

  $result = $service_obj->Method(...);
  $result->Att1->Ciphertext

=head1 DESCRIPTION

The password data for the Windows Server-based instance, including the
ciphertext and the key pair name.

=head1 ATTRIBUTES


=head2 Ciphertext => Str

  The encrypted password. Ciphertext will be an empty string if access to
your new instance is not ready yet. When you create an instance, it can
take up to 15 minutes for the instance to be ready.

If you use the default key pair (C<LightsailDefaultKeyPair>), the
decrypted password will be available in the password field.

If you are using a custom key pair, you need to use your own means of
decryption.

If you change the Administrator password on the instance, Lightsail
will continue to return the original ciphertext value. When accessing
the instance using RDP, you need to manually enter the Administrator
password after changing it from the default.


=head2 KeyPairName => Str

  The name of the key pair that you used when creating your instance. If
no key pair name was specified when creating the instance, Lightsail
uses the default key pair (C<LightsailDefaultKeyPair>).

If you are using a custom key pair, you need to use your own means of
decrypting your password using the C<ciphertext>. Lightsail creates the
ciphertext by encrypting your password with the public key part of this
key pair.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

