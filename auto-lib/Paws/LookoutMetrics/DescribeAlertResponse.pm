
package Paws::LookoutMetrics::DescribeAlertResponse;
  use Moose;
  has Alert => (is => 'ro', isa => 'Paws::LookoutMetrics::Alert');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::DescribeAlertResponse

=head1 ATTRIBUTES


=head2 Alert => L<Paws::LookoutMetrics::Alert>

Contains information about an alert.


=head2 _request_id => Str


=cut

