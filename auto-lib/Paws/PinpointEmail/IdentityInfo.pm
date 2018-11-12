package Paws::PinpointEmail::IdentityInfo;
  use Moose;
  has IdentityName => (is => 'ro', isa => 'Str');
  has IdentityType => (is => 'ro', isa => 'Str');
  has SendingEnabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::IdentityInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::IdentityInfo object:

  $service_obj->Method(Att1 => { IdentityName => $value, ..., SendingEnabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::IdentityInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->IdentityName

=head1 DESCRIPTION

Information about an email identity.

=head1 ATTRIBUTES


=head2 IdentityName => Str

  The address or domain of the identity.


=head2 IdentityType => Str

  The email identity type. The identity type can be one of the following:

=over

=item *

C<EMAIL_ADDRESS> E<ndash> The identity is an email address.

=item *

C<DOMAIN> E<ndash> The identity is a domain.

=item *

C<MANAGED_DOMAIN> E<ndash> The identity is a domain that is managed by
AWS.

=back



=head2 SendingEnabled => Bool

  Indicates whether or not you can send email from the identity.

In Amazon Pinpoint, an identity is an email address or domain that you
send email from. Before you can send email from an identity, you have
to demostrate that you own the identity, and that you authorize Amazon
Pinpoint to send email from that identity.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

