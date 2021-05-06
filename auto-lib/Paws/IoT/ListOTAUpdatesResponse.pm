
package Paws::IoT::ListOTAUpdatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has OtaUpdates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::OTAUpdateSummary]', traits => ['NameInRequest'], request_name => 'otaUpdates');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListOTAUpdatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to use to get the next set of results.


=head2 OtaUpdates => ArrayRef[L<Paws::IoT::OTAUpdateSummary>]

A list of OTA update jobs.


=head2 _request_id => Str


=cut

