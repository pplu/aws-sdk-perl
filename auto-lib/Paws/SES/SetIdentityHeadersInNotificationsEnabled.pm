
package Paws::SES::SetIdentityHeadersInNotificationsEnabled;
  use Moose;
  has Enabled => (is => 'ro', isa => 'Bool', required => 1);
  has Identity => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetIdentityHeadersInNotificationsEnabled');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::SetIdentityHeadersInNotificationsEnabledResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetIdentityHeadersInNotificationsEnabledResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::SetIdentityHeadersInNotificationsEnabled - Arguments for method SetIdentityHeadersInNotificationsEnabled on L<Paws::SES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetIdentityHeadersInNotificationsEnabled on the
L<Amazon Simple Email Service|Paws::SES> service. Use the attributes of this class
as arguments to method SetIdentityHeadersInNotificationsEnabled.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetIdentityHeadersInNotificationsEnabled.

=head1 SYNOPSIS

    my $email = Paws->service('SES');
    # SetIdentityHeadersInNotificationsEnabled
    # The following example configures Amazon SES to include the original email
    # headers in the Amazon SNS bounce notifications for an identity:
    my $SetIdentityHeadersInNotificationsEnabledResponse =
      $email->SetIdentityHeadersInNotificationsEnabled(
      {
        'Enabled'          => 1,
        'Identity'         => 'user@example.com',
        'NotificationType' => 'Bounce'
      }
      );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/SetIdentityHeadersInNotificationsEnabled>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

Sets whether Amazon SES includes the original email headers in Amazon
SNS notifications of the specified notification type. A value of
C<true> specifies that Amazon SES will include headers in
notifications, and a value of C<false> specifies that Amazon SES will
not include headers in notifications.

This value can only be set when C<NotificationType> is already set to
use a particular Amazon SNS topic.



=head2 B<REQUIRED> Identity => Str

The identity for which to enable or disable headers in notifications.
Examples: C<user@example.com>, C<example.com>.



=head2 B<REQUIRED> NotificationType => Str

The notification type for which to enable or disable headers in
notifications.

Valid values are: C<"Bounce">, C<"Complaint">, C<"Delivery">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetIdentityHeadersInNotificationsEnabled in L<Paws::SES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

