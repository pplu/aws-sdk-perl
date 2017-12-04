
package Paws::SES::DescribeConfigurationSetResponse;
  use Moose;
  has ConfigurationSet => (is => 'ro', isa => 'Paws::SES::ConfigurationSet');
  has EventDestinations => (is => 'ro', isa => 'ArrayRef[Paws::SES::EventDestination]');
  has ReputationOptions => (is => 'ro', isa => 'Paws::SES::ReputationOptions');
  has TrackingOptions => (is => 'ro', isa => 'Paws::SES::TrackingOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SES::DescribeConfigurationSetResponse

=head1 ATTRIBUTES


=head2 ConfigurationSet => L<Paws::SES::ConfigurationSet>

The configuration set object associated with the specified
configuration set.


=head2 EventDestinations => ArrayRef[L<Paws::SES::EventDestination>]

A list of event destinations associated with the configuration set.


=head2 ReputationOptions => L<Paws::SES::ReputationOptions>

An object that represents the reputation settings for the configuration
set.


=head2 TrackingOptions => L<Paws::SES::TrackingOptions>

The name of the custom open and click tracking domain associated with
the configuration set.


=head2 _request_id => Str


=cut

