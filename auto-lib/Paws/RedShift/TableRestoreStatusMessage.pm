
package Paws::RedShift::TableRestoreStatusMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has TableRestoreStatusDetails => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::TableRestoreStatus]', request_name => 'TableRestoreStatus', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::TableRestoreStatusMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A pagination token that can be used in a subsequent
DescribeTableRestoreStatus request.


=head2 TableRestoreStatusDetails => ArrayRef[L<Paws::RedShift::TableRestoreStatus>]

A list of status details for one or more table restore requests.


=head2 _request_id => Str


=cut

