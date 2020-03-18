package Paws::SESv2::DkimSigningAttributes;
  use Moose;
  has DomainSigningPrivateKey => (is => 'ro', isa => 'Str', required => 1);
  has DomainSigningSelector => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::DkimSigningAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::DkimSigningAttributes object:

  $service_obj->Method(Att1 => { DomainSigningPrivateKey => $value, ..., DomainSigningSelector => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::DkimSigningAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainSigningPrivateKey

=head1 DESCRIPTION

An object that contains information about the tokens used for setting
up Bring Your Own DKIM (BYODKIM).

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainSigningPrivateKey => Str

  A private key that's used to generate a DKIM signature.

The private key must use 1024-bit RSA encryption, and must be encoded
using base64 encoding.


=head2 B<REQUIRED> DomainSigningSelector => Str

  A string that's used to identify a public key in the DNS configuration
for a domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

