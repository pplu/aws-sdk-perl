
package Paws::PinpointEmail::GetConfigurationSetResponse;
  use Moose;
  has ConfigurationSetName => (is => 'ro', isa => 'Str');
  has DeliveryOptions => (is => 'ro', isa => 'Paws::PinpointEmail::DeliveryOptions');
  has ReputationOptions => (is => 'ro', isa => 'Paws::PinpointEmail::ReputationOptions');
  has SendingOptions => (is => 'ro', isa => 'Paws::PinpointEmail::SendingOptions');
  has TrackingOptions => (is => 'ro', isa => 'Paws::PinpointEmail::TrackingOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetConfigurationSetResponse

=head1 ATTRIBUTES


=head2 ConfigurationSetName => Str

The name of the configuration set.


=head2 DeliveryOptions => L<Paws::PinpointEmail::DeliveryOptions>

An object that defines the dedicated IP pool that is used to send
emails that you send using the configuration set.


=head2 ReputationOptions => L<Paws::PinpointEmail::ReputationOptions>

An object that defines whether or not Amazon Pinpoint collects
reputation metrics for the emails that you send that use the
configuration set.


=head2 SendingOptions => L<Paws::PinpointEmail::SendingOptions>

An object that defines whether or not Amazon Pinpoint can send email
that you send using the configuration set.


=head2 TrackingOptions => L<Paws::PinpointEmail::TrackingOptions>

An object that defines the open and click tracking options for emails
that you send using the configuration set.


=head2 _request_id => Str


=cut

