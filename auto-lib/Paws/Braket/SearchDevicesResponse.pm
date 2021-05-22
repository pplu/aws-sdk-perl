
package Paws::Braket::SearchDevicesResponse;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::Braket::DeviceSummary]', traits => ['NameInRequest'], request_name => 'devices', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::SearchDevicesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Devices => ArrayRef[L<Paws::Braket::DeviceSummary>]

An array of C<DeviceSummary> objects for devices that match the
specified filter values.


=head2 NextToken => Str

A token used for pagination of results, or null if there are no
additional results. Use the token value in a subsequent request to
continue results where the previous request ended.


=head2 _request_id => Str


=cut

