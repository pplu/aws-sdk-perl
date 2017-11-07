package Paws::SES::IdentityMailFromDomainAttributes;
  use Moose;
  has BehaviorOnMXFailure => (is => 'ro', isa => 'Str', required => 1);
  has MailFromDomain => (is => 'ro', isa => 'Str', required => 1);
  has MailFromDomainStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::IdentityMailFromDomainAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::IdentityMailFromDomainAttributes object:

  $service_obj->Method(Att1 => { BehaviorOnMXFailure => $value, ..., MailFromDomainStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::IdentityMailFromDomainAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->BehaviorOnMXFailure

=head1 DESCRIPTION

Represents the custom MAIL FROM domain attributes of a verified
identity (email address or domain).

=head1 ATTRIBUTES


=head2 B<REQUIRED> BehaviorOnMXFailure => Str

  The action that Amazon SES takes if it cannot successfully read the
required MX record when you send an email. A value of
C<UseDefaultValue> indicates that if Amazon SES cannot read the
required MX record, it uses amazonses.com (or a subdomain of that) as
the MAIL FROM domain. A value of C<RejectMessage> indicates that if
Amazon SES cannot read the required MX record, Amazon SES returns a
C<MailFromDomainNotVerified> error and does not send the email.

The custom MAIL FROM setup states that result in this behavior are
C<Pending>, C<Failed>, and C<TemporaryFailure>.


=head2 B<REQUIRED> MailFromDomain => Str

  The custom MAIL FROM domain that the identity is configured to use.


=head2 B<REQUIRED> MailFromDomainStatus => Str

  The state that indicates whether Amazon SES has successfully read the
MX record required for custom MAIL FROM domain setup. If the state is
C<Success>, Amazon SES uses the specified custom MAIL FROM domain when
the verified identity sends an email. All other states indicate that
Amazon SES takes the action described by C<BehaviorOnMXFailure>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

