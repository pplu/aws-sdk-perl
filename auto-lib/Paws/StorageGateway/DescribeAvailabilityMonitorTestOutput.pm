
package Paws::StorageGateway::DescribeAvailabilityMonitorTestOutput;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeAvailabilityMonitorTestOutput

=head1 ATTRIBUTES


=head2 GatewayARN => Str




=head2 StartTime => Str

The time the High Availability monitoring test was started. If a test
hasn't been performed, the value of this field is null.


=head2 Status => Str

The status of the High Availability monitoring test. If a test hasn't
been performed, the value of this field is null.

Valid values are: C<"COMPLETE">, C<"FAILED">, C<"PENDING">
=head2 _request_id => Str


=cut

1;