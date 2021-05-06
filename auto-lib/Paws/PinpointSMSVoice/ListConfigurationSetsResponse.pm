
package Paws::PinpointSMSVoice::ListConfigurationSetsResponse;
  use Moose;
  has ConfigurationSets => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoice::ListConfigurationSetsResponse

=head1 ATTRIBUTES


=head2 ConfigurationSets => ArrayRef[Str|Undef]

An object that contains a list of configuration sets for your account
in the current region.


=head2 NextToken => Str

A token returned from a previous call to ListConfigurationSets to
indicate the position in the list of configuration sets.


=head2 _request_id => Str


=cut

