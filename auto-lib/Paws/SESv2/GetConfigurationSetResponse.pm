
package Paws::SESv2::GetConfigurationSetResponse;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has DeliveryOptions => (is => 'ro', isa => 'Paws::SESv2::DeliveryOptions');
  has ReputationOptions => (is => 'ro', isa => 'Paws::SESv2::ReputationOptions');
  has SendingOptions => (is => 'ro', isa => 'Paws::SESv2::SendingOptions');
  has SuppressionOptions => (is => 'ro', isa => 'Paws::SESv2::SuppressionOptions');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SESv2::Tag]');
  has TrackingOptions => (is => 'ro', isa => 'Paws::SESv2::TrackingOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetConfigurationSetResponse

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set.


=head2 DeliveryOptions => L<Paws::SESv2::DeliveryOptions>

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.


=head2 ReputationOptions => L<Paws::SESv2::ReputationOptions>

An object that defines whether or not Amazon SES collects reputation
metrics for the emails that you send that use the configuration set.


=head2 SendingOptions => L<Paws::SESv2::SendingOptions>

An object that defines whether or not Amazon SES can send email that
you send using the configuration set.


=head2 SuppressionOptions => L<Paws::SESv2::SuppressionOptions>

An object that contains information about the suppression list
preferences for your account.


=head2 Tags => ArrayRef[L<Paws::SESv2::Tag>]

An array of objects that define the tags (keys and values) that are
associated with the configuration set.


=head2 TrackingOptions => L<Paws::SESv2::TrackingOptions>

An object that defines the open and click tracking options for emails
that you send using the configuration set.


=head2 _request_id => Str


=cut

