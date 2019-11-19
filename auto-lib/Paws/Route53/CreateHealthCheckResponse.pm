
package Paws::Route53::CreateHealthCheckResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_HealthCheck/;
  has HealthCheck => (is => 'ro', isa => Route53_HealthCheck, required => 1);
  has Location => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'Location' => 'Location'
                     },
  'types' => {
               'Location' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'HealthCheck' => {
                                  'class' => 'Paws::Route53::HealthCheck',
                                  'type' => 'Route53_HealthCheck'
                                }
             },
  'IsRequired' => {
                    'Location' => 1,
                    'HealthCheck' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateHealthCheckResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheck => Route53_HealthCheck

A complex type that contains identifying information about the health
check.



=head2 B<REQUIRED> Location => Str

The unique URL representing the new health check.




=cut

