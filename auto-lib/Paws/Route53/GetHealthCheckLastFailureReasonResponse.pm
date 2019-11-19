
package Paws::Route53::GetHealthCheckLastFailureReasonResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53::Types qw/Route53_HealthCheckObservation/;
  has HealthCheckObservations => (is => 'ro', isa => ArrayRef[Route53_HealthCheckObservation], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'HealthCheckObservations' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HealthCheckObservations' => {
                                              'class' => 'Paws::Route53::HealthCheckObservation',
                                              'type' => 'ArrayRef[Route53_HealthCheckObservation]'
                                            }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckLastFailureReasonResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckObservations => ArrayRef[Route53_HealthCheckObservation]

A list that contains one C<Observation> element for each Amazon Route
53 health checker that is reporting a last failure reason.




=cut

