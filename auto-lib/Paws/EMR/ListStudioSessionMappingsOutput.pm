
package Paws::EMR::ListStudioSessionMappingsOutput;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has SessionMappings => (is => 'ro', isa => 'ArrayRef[Paws::EMR::SessionMappingSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListStudioSessionMappingsOutput

=head1 ATTRIBUTES


=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 SessionMappings => ArrayRef[L<Paws::EMR::SessionMappingSummary>]

A list of session mapping summary objects. Each object includes session
mapping details such as creation time, identity type (user or group),
and Amazon EMR Studio ID.


=head2 _request_id => Str


=cut

1;