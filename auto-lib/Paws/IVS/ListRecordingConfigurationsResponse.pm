
package Paws::IVS::ListRecordingConfigurationsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has RecordingConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::IVS::RecordingConfigurationSummary]', traits => ['NameInRequest'], request_name => 'recordingConfigurations', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::ListRecordingConfigurationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more recording configurations than C<maxResults>, use
C<nextToken> in the request to get the next set.


=head2 B<REQUIRED> RecordingConfigurations => ArrayRef[L<Paws::IVS::RecordingConfigurationSummary>]

List of the matching recording configurations.


=head2 _request_id => Str


=cut

