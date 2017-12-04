package Paws::ACM::ExtendedKeyUsage;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has OID => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::ExtendedKeyUsage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::ExtendedKeyUsage object:

  $service_obj->Method(Att1 => { Name => $value, ..., OID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::ExtendedKeyUsage object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The Extended Key Usage X.509 v3 extension defines one or more purposes
for which the public key can be used. This is in addition to or in
place of the basic purposes specified by the Key Usage extension.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of an Extended Key Usage value.


=head2 OID => Str

  An object identifier (OID) for the extension value. OIDs are strings of
numbers separated by periods. The following OIDs are defined in RFC
3280 and RFC 5280.

=over

=item *

C<1.3.6.1.5.5.7.3.1 (TLS_WEB_SERVER_AUTHENTICATION)>

=item *

C<1.3.6.1.5.5.7.3.2 (TLS_WEB_CLIENT_AUTHENTICATION)>

=item *

C<1.3.6.1.5.5.7.3.3 (CODE_SIGNING)>

=item *

C<1.3.6.1.5.5.7.3.4 (EMAIL_PROTECTION)>

=item *

C<1.3.6.1.5.5.7.3.8 (TIME_STAMPING)>

=item *

C<1.3.6.1.5.5.7.3.9 (OCSP_SIGNING)>

=item *

C<1.3.6.1.5.5.7.3.5 (IPSEC_END_SYSTEM)>

=item *

C<1.3.6.1.5.5.7.3.6 (IPSEC_TUNNEL)>

=item *

C<1.3.6.1.5.5.7.3.7 (IPSEC_USER)>

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

