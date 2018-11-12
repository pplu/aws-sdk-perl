package Paws::PinpointEmail::MailFromAttributes;
  use Moose;
  has BehaviorOnMxFailure => (is => 'ro', isa => 'Str', required => 1);
  has MailFromDomain => (is => 'ro', isa => 'Str', required => 1);
  has MailFromDomainStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::MailFromAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PinpointEmail::MailFromAttributes object:

  $service_obj->Method(Att1 => { BehaviorOnMxFailure => $value, ..., MailFromDomainStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PinpointEmail::MailFromAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->BehaviorOnMxFailure

=head1 DESCRIPTION

A list of attributes that are associated with a MAIL FROM domain.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BehaviorOnMxFailure => Str

  The action that Amazon Pinpoint to takes if it can't read the required
MX record for a custom MAIL FROM domain. When you set this value to
C<UseDefaultValue>, Amazon Pinpoint uses I<amazonses.com> as the MAIL
FROM domain. When you set this value to C<RejectMessage>, Amazon
Pinpoint returns a C<MailFromDomainNotVerified> error, and doesn't
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

C<PENDING> E<ndash> Amazon Pinpoint hasn't started searching for the MX
record yet.

=item *

C<SUCCESS> E<ndash> Amazon Pinpoint detected the required MX record for
the MAIL FROM domain.

=item *

C<FAILED> E<ndash> Amazon Pinpoint can't find the required MX record,
or the record no longer exists.

=item *

C<TEMPORARY_FAILURE> E<ndash> A temporary issue occurred, which
prevented Amazon Pinpoint from determining the status of the MAIL FROM
domain.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PinpointEmail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

