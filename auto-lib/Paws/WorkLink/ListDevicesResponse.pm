
package Paws::WorkLink::ListDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::WorkLink::DeviceSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListDevicesResponse

=head1 ATTRIBUTES


=head2 Devices => ArrayRef[L<Paws::WorkLink::DeviceSummary>]

Information about the devices.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

