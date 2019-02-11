
package Paws::Discovery::StopContinuousExportResponse;
  use Moose;
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );
  has StopTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stopTime' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StopContinuousExportResponse

=head1 ATTRIBUTES


=head2 StartTime => Str

Timestamp that represents when this continuous export started
collecting data.


=head2 StopTime => Str

Timestamp that represents when this continuous export was stopped.


=head2 _request_id => Str


=cut

1;