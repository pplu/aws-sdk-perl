
package Paws::LookoutMetrics::CreateAlertResponse;
  use Moose;
  has AlertArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutMetrics::CreateAlertResponse

=head1 ATTRIBUTES


=head2 AlertArn => Str

The ARN of the alert.


=head2 _request_id => Str


=cut

