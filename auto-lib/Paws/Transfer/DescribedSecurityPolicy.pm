# Generated by default/object.tt
package Paws::Transfer::DescribedSecurityPolicy;
  use Moose;
  has Fips => (is => 'ro', isa => 'Bool');
  has SecurityPolicyName => (is => 'ro', isa => 'Str', required => 1);
  has SshCiphers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SshKexs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SshMacs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TlsCiphers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribedSecurityPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Transfer::DescribedSecurityPolicy object:

  $service_obj->Method(Att1 => { Fips => $value, ..., TlsCiphers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Transfer::DescribedSecurityPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Fips

=head1 DESCRIPTION

Describes the properties of a security policy that was specified. For
more information about security policies, see Working with security
policies
(https://docs.aws.amazon.com/transfer/latest/userguide/security-policies.html).

=head1 ATTRIBUTES


=head2 Fips => Bool

Specifies whether this policy enables Federal Information Processing
Standards (FIPS).


=head2 B<REQUIRED> SecurityPolicyName => Str

Specifies the name of the security policy that is attached to the
server.


=head2 SshCiphers => ArrayRef[Str|Undef]

Specifies the enabled Secure Shell (SSH) cipher encryption algorithms
in the security policy that is attached to the server.


=head2 SshKexs => ArrayRef[Str|Undef]

Specifies the enabled SSH key exchange (KEX) encryption algorithms in
the security policy that is attached to the server.


=head2 SshMacs => ArrayRef[Str|Undef]

Specifies the enabled SSH message authentication code (MAC) encryption
algorithms in the security policy that is attached to the server.


=head2 TlsCiphers => ArrayRef[Str|Undef]

Specifies the enabled Transport Layer Security (TLS) cipher encryption
algorithms in the security policy that is attached to the server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

