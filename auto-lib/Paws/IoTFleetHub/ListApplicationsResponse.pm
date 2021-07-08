
package Paws::IoTFleetHub::ListApplicationsResponse;
  use Moose;
  has ApplicationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTFleetHub::ApplicationSummary]', traits => ['NameInRequest'], request_name => 'applicationSummaries');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::ListApplicationsResponse

=head1 ATTRIBUTES


=head2 ApplicationSummaries => ArrayRef[L<Paws::IoTFleetHub::ApplicationSummary>]

An array of objects that provide summaries of information about the web
applications in the list.


=head2 NextToken => Str

A token used to get the next set of results.


=head2 _request_id => Str


=cut

