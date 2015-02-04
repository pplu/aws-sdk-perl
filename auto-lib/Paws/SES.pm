
use Paws::API;


package Paws::SES {
  use Moose;
  sub service { 'email' }
  sub version { '2010-12-01' }
  sub flattened_arrays { 0 }

  with 'Paws::API::Caller', 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  
  sub DeleteIdentity {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::DeleteIdentity', @_);
  }
  sub DeleteVerifiedEmailAddress {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::DeleteVerifiedEmailAddress', @_);
  }
  sub GetIdentityDkimAttributes {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::GetIdentityDkimAttributes', @_);
  }
  sub GetIdentityNotificationAttributes {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::GetIdentityNotificationAttributes', @_);
  }
  sub GetIdentityVerificationAttributes {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::GetIdentityVerificationAttributes', @_);
  }
  sub GetSendQuota {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::GetSendQuota', @_);
  }
  sub GetSendStatistics {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::GetSendStatistics', @_);
  }
  sub ListIdentities {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::ListIdentities', @_);
  }
  sub ListVerifiedEmailAddresses {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::ListVerifiedEmailAddresses', @_);
  }
  sub SendEmail {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::SendEmail', @_);
  }
  sub SendRawEmail {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::SendRawEmail', @_);
  }
  sub SetIdentityDkimEnabled {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::SetIdentityDkimEnabled', @_);
  }
  sub SetIdentityFeedbackForwardingEnabled {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::SetIdentityFeedbackForwardingEnabled', @_);
  }
  sub SetIdentityNotificationTopic {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::SetIdentityNotificationTopic', @_);
  }
  sub VerifyDomainDkim {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::VerifyDomainDkim', @_);
  }
  sub VerifyDomainIdentity {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::VerifyDomainIdentity', @_);
  }
  sub VerifyEmailAddress {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::VerifyEmailAddress', @_);
  }
  sub VerifyEmailIdentity {
    my $self = shift;
    return $self->caller->do_call('Paws::SES::VerifyEmailIdentity', @_);
  }
  sub ListAllIdentities {
    my $self = shift;

    my $result = $self->ListIdentities(@_);
    my $array = [];
    push @$array, @{ $result->Identities };

    while ($result->NextToken) {
      $result = $self->ListIdentities(@_, NextToken => $result->NextToken);
      push @$array, @{ $result->Identities };
    }

    return 'Paws::SES::ListIdentities'->_returns->new(Identities => $array);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES - Perl Interface to AWS Amazon Simple Email Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



Amazon Simple Email Service

This is the API Reference for Amazon Simple Email Service (Amazon SES).
This documentation is intended to be used in conjunction with the
Amazon SES Developer Guide.










=head1 METHODS

=head2 DeleteIdentity()

  Arguments described in: L<Paws::SES::DeleteIdentity>

  Returns: L<Paws::SES::DeleteIdentityResponse>

  

Deletes the specified identity (email address or domain) from the list
of verified identities.

This action is throttled at one request per second.











=head2 DeleteVerifiedEmailAddress()

  Arguments described in: L<Paws::SES::DeleteVerifiedEmailAddress>

  Returns: nothing

  

Deletes the specified email address from the list of verified
addresses.

The DeleteVerifiedEmailAddress action is deprecated as of the May 15,
2012 release of Domain Verification. The DeleteIdentity action is now
preferred.

This action is throttled at one request per second.











=head2 GetIdentityDkimAttributes()

  Arguments described in: L<Paws::SES::GetIdentityDkimAttributes>

  Returns: L<Paws::SES::GetIdentityDkimAttributesResponse>

  

Returns the current status of Easy DKIM signing for an entity. For
domain name identities, this action also returns the DKIM tokens that
are required for Easy DKIM signing, and whether Amazon SES has
successfully verified that these tokens have been published.

This action takes a list of identities as input and returns the
following information for each:

=over

=item * Whether Easy DKIM signing is enabled or disabled.

=item * A set of DKIM tokens that represent the identity. If the
identity is an email address, the tokens represent the domain of that
address.

=item * Whether Amazon SES has successfully verified the DKIM tokens
published in the domain's DNS. This information is only returned for
domain name identities, not for email addresses.

=back

This action is throttled at one request per second.

For more information about creating DNS records using DKIM tokens, go
to the Amazon SES Developer Guide.











=head2 GetIdentityNotificationAttributes()

  Arguments described in: L<Paws::SES::GetIdentityNotificationAttributes>

  Returns: L<Paws::SES::GetIdentityNotificationAttributesResponse>

  

Given a list of verified identities (email addresses and/or domains),
returns a structure describing identity notification attributes.

This action is throttled at one request per second.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide.











=head2 GetIdentityVerificationAttributes()

  Arguments described in: L<Paws::SES::GetIdentityVerificationAttributes>

  Returns: L<Paws::SES::GetIdentityVerificationAttributesResponse>

  

Given a list of identities (email addresses and/or domains), returns
the verification status and (for domain identities) the verification
token for each identity.

This action is throttled at one request per second.











=head2 GetSendQuota()

  Arguments described in: L<Paws::SES::GetSendQuota>

  Returns: L<Paws::SES::GetSendQuotaResponse>

  

Returns the user's current sending limits.

This action is throttled at one request per second.











=head2 GetSendStatistics()

  Arguments described in: L<Paws::SES::GetSendStatistics>

  Returns: L<Paws::SES::GetSendStatisticsResponse>

  

Returns the user's sending statistics. The result is a list of data
points, representing the last two weeks of sending activity.

Each data point in the list contains statistics for a 15-minute
interval.

This action is throttled at one request per second.











=head2 ListIdentities()

  Arguments described in: L<Paws::SES::ListIdentities>

  Returns: L<Paws::SES::ListIdentitiesResponse>

  

Returns a list containing all of the identities (email addresses and
domains) for a specific AWS Account, regardless of verification status.

This action is throttled at one request per second.











=head2 ListVerifiedEmailAddresses()

  Arguments described in: L<Paws::SES::ListVerifiedEmailAddresses>

  Returns: L<Paws::SES::ListVerifiedEmailAddressesResponse>

  

Returns a list containing all of the email addresses that have been
verified.

The ListVerifiedEmailAddresses action is deprecated as of the May 15,
2012 release of Domain Verification. The ListIdentities action is now
preferred.

This action is throttled at one request per second.











=head2 SendEmail()

  Arguments described in: L<Paws::SES::SendEmail>

  Returns: L<Paws::SES::SendEmailResponse>

  

Composes an email message based on input data, and then immediately
queues the message for sending.

You can only send email from verified email addresses and domains. If
you have not requested production access to Amazon SES, you must also
verify every recipient email address except for the recipients provided
by the Amazon SES mailbox simulator. For more information, go to the
Amazon SES Developer Guide.

The total size of the message cannot exceed 10 MB.

Amazon SES has a limit on the total number of recipients per message:
The combined number of To:, CC: and BCC: email addresses cannot exceed
50. If you need to send an email message to a larger audience, you can
divide your recipient list into groups of 50 or fewer, and then call
Amazon SES repeatedly to send the message to each group.

For every message that you send, the total number of recipients (To:,
CC: and BCC:) is counted against your I<sending quota> - the maximum
number of emails you can send in a 24-hour period. For information
about your sending quota, go to the Amazon SES Developer Guide.











=head2 SendRawEmail()

  Arguments described in: L<Paws::SES::SendRawEmail>

  Returns: L<Paws::SES::SendRawEmailResponse>

  

Sends an email message, with header and content specified by the
client. The C<SendRawEmail> action is useful for sending multipart MIME
emails. The raw text of the message must comply with Internet email
standards; otherwise, the message cannot be sent.

You can only send email from verified email addresses and domains. If
you have not requested production access to Amazon SES, you must also
verify every recipient email address except for the recipients provided
by the Amazon SES mailbox simulator. For more information, go to the
Amazon SES Developer Guide.

The total size of the message cannot exceed 10 MB. This includes any
attachments that are part of the message.

Amazon SES has a limit on the total number of recipients per message:
The combined number of To:, CC: and BCC: email addresses cannot exceed
50. If you need to send an email message to a larger audience, you can
divide your recipient list into groups of 50 or fewer, and then call
Amazon SES repeatedly to send the message to each group.

The To:, CC:, and BCC: headers in the raw message can contain a group
list. Note that each recipient in a group list counts towards the
50-recipient limit.

For every message that you send, the total number of recipients (To:,
CC: and BCC:) is counted against your I<sending quota> - the maximum
number of emails you can send in a 24-hour period. For information
about your sending quota, go to the Amazon SES Developer Guide.











=head2 SetIdentityDkimEnabled()

  Arguments described in: L<Paws::SES::SetIdentityDkimEnabled>

  Returns: L<Paws::SES::SetIdentityDkimEnabledResponse>

  

Enables or disables Easy DKIM signing of email sent from an identity:

=over

=item * If Easy DKIM signing is enabled for a domain name identity
(e.g., C<example.com>), then Amazon SES will DKIM-sign all email sent
by addresses under that domain name (e.g., C<user@example.com>).

=item * If Easy DKIM signing is enabled for an email address, then
Amazon SES will DKIM-sign all email sent by that email address.

=back

For email addresses (e.g., C<user@example.com>), you can only enable
Easy DKIM signing if the corresponding domain (e.g., C<example.com>)
has been set up for Easy DKIM using the AWS Console or the
C<VerifyDomainDkim> action.

This action is throttled at one request per second.

For more information about Easy DKIM signing, go to the Amazon SES
Developer Guide.











=head2 SetIdentityFeedbackForwardingEnabled()

  Arguments described in: L<Paws::SES::SetIdentityFeedbackForwardingEnabled>

  Returns: L<Paws::SES::SetIdentityFeedbackForwardingEnabledResponse>

  

Given an identity (email address or domain), enables or disables
whether Amazon SES forwards bounce and complaint notifications as
email. Feedback forwarding can only be disabled when Amazon Simple
Notification Service (Amazon SNS) topics are specified for both bounces
and complaints.

This action is throttled at one request per second.

For more information about using notifications with Amazon SES, see the
Amazon SES Developer Guide.











=head2 SetIdentityNotificationTopic()

  Arguments described in: L<Paws::SES::SetIdentityNotificationTopic>

  Returns: L<Paws::SES::SetIdentityNotificationTopicResponse>

  

Given an identity (email address or domain), sets the Amazon Simple
Notification Service (Amazon SNS) topic to which Amazon SES will
publish bounce, complaint, and/or delivery notifications for emails
sent with that identity as the C<Source>.

This action is throttled at one request per second.

For more information about feedback notification, see the Amazon SES
Developer Guide.











=head2 VerifyDomainDkim()

  Arguments described in: L<Paws::SES::VerifyDomainDkim>

  Returns: L<Paws::SES::VerifyDomainDkimResponse>

  

Returns a set of DKIM tokens for a domain. DKIM I<tokens> are character
strings that represent your domain's identity. Using these tokens, you
will need to create DNS CNAME records that point to DKIM public keys
hosted by Amazon SES. Amazon Web Services will eventually detect that
you have updated your DNS records; this detection process may take up
to 72 hours. Upon successful detection, Amazon SES will be able to
DKIM-sign email originating from that domain.

This action is throttled at one request per second.

To enable or disable Easy DKIM signing for a domain, use the
C<SetIdentityDkimEnabled> action.

For more information about creating DNS records using DKIM tokens, go
to the Amazon SES Developer Guide.











=head2 VerifyDomainIdentity()

  Arguments described in: L<Paws::SES::VerifyDomainIdentity>

  Returns: L<Paws::SES::VerifyDomainIdentityResponse>

  

Verifies a domain.

This action is throttled at one request per second.











=head2 VerifyEmailAddress()

  Arguments described in: L<Paws::SES::VerifyEmailAddress>

  Returns: nothing

  

Verifies an email address. This action causes a confirmation email
message to be sent to the specified address.

The VerifyEmailAddress action is deprecated as of the May 15, 2012
release of Domain Verification. The VerifyEmailIdentity action is now
preferred.

This action is throttled at one request per second.











=head2 VerifyEmailIdentity()

  Arguments described in: L<Paws::SES::VerifyEmailIdentity>

  Returns: L<Paws::SES::VerifyEmailIdentityResponse>

  

Verifies an email address. This action causes a confirmation email
message to be sent to the specified address.

This action is throttled at one request per second.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

