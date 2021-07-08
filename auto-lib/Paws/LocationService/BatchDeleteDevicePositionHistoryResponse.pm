
package Paws::LocationService::BatchDeleteDevicePositionHistoryResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::LocationService::BatchDeleteDevicePositionHistoryError]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::BatchDeleteDevicePositionHistoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::LocationService::BatchDeleteDevicePositionHistoryError>]

Contains error details for each device history that failed to delete.


=head2 _request_id => Str


=cut

