package Paws::SES::BulkEmailDestinationStatus;
  use Moose;
  has Error => (is => 'ro', isa => 'Str');
  has MessageId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::BulkEmailDestinationStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SES::BulkEmailDestinationStatus object:

  $service_obj->Method(Att1 => { Error => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SES::BulkEmailDestinationStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Error

=head1 DESCRIPTION

An object that contains the response from the C<SendBulkTemplatedEmail>
operation.

=head1 ATTRIBUTES


=head2 Error => Str

  A description of an error that prevented a message being sent using the
C<SendBulkTemplatedEmail> operation.


=head2 MessageId => Str

  The unique message identifier returned from the
C<SendBulkTemplatedEmail> operation.


=head2 Status => Str

  The status of a message sent using the C<SendBulkTemplatedEmail>
operation.

Possible values for this parameter include:

=over

=item *

C<Success>: Amazon SES accepted the message, and will attempt to
deliver it to the recipients.

=item *

C<MessageRejected>: The message was rejected because it contained a
virus.

=item *

C<MailFromDomainNotVerified>: The sender's email address or domain was
not verified.

=item *

C<ConfigurationSetDoesNotExist>: The configuration set you specified
does not exist.

=item *

C<TemplateDoesNotExist>: The template you specified does not exist.

=item *

C<AccountSuspended>: Your account has been shut down because of issues
related to your email sending practices.

=item *

C<AccountThrottled>: The number of emails you can send has been reduced
because your account has exceeded its allocated sending limit.

=item *

C<AccountDailyQuotaExceeded>: You have reached or exceeded the maximum
number of emails you can send from your account in a 24-hour period.

=item *

C<InvalidSendingPoolName>: The configuration set you specified refers
to an IP pool that does not exist.

=item *

C<AccountSendingPaused>: Email sending for the Amazon SES account was
disabled using the UpdateAccountSendingEnabled operation.

=item *

C<ConfigurationSetSendingPaused>: Email sending for this configuration
set was disabled using the UpdateConfigurationSetSendingEnabled
operation.

=item *

C<InvalidParameterValue>: One or more of the parameters you specified
when calling this operation was invalid. See the error message for
additional information.

=item *

C<TransientFailure>: Amazon SES was unable to process your request
because of a temporary issue.

=item *

C<Failed>: Amazon SES was unable to process your request. See the error
message for additional information.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

