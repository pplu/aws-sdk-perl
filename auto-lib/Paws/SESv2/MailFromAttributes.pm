package Paws::SESv2::MailFromAttributes;
  use Moose;
  has BehaviorOnMxFailure => (is => 'ro', isa => 'Str', required => 1);
  has MailFromDomain => (is => 'ro', isa => 'Str', required => 1);
  has MailFromDomainStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::MailFromAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SESv2::MailFromAttributes object:

  $service_obj->Method(Att1 => { BehaviorOnMxFailure => $value, ..., MailFromDomainStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SESv2::MailFromAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->BehaviorOnMxFailure

=head1 DESCRIPTION

A list of attributes that are associated with a MAIL FROM domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BehaviorOnMxFailure => Str

  The action that you want to take if the required MX record can't be
found when you send an email. When you set this value to
C<UseDefaultValue>, the mail is sent using I<amazonses.com> as the MAIL
FROM domain. When you set this value to C<RejectMessage>, the Amazon
SES API v2 returns a C<MailFromDomainNotVerified> error, and doesn't
attempt to deliver the email.

These behaviors are taken when the custom MAIL FROM domain
configuration is in the C<Pending>, C<Failed>, and C<TemporaryFailure>
states.


=head2 B<REQUIRED> MailFromDomain => Str

  The name of a domain that an email identity uses as a custom MAIL FROM
domain.


=head2 B<REQUIRED> MailFromDomainStatus => Str

  The status of the MAIL FROM domain. This status can have the following
values:

=over

=item *

C<PENDING> E<ndash> Amazon SES hasn't started searching for the MX
record yet.

=item *

C<SUCCESS> E<ndash> Amazon SES detected the required MX record for the
MAIL FROM domain.

=item *

C<FAILED> E<ndash> Amazon SES can't find the required MX record, or the
record no longer exists.

=item *

C<TEMPORARY_FAILURE> E<ndash> A temporary issue occurred, which
prevented Amazon SES from determining the status of the MAIL FROM
domain.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

