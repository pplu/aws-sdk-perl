
package Paws::Route53::GetHealthCheckResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_HealthCheck/;
  has HealthCheck => (is => 'ro', isa => Route53_HealthCheck, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HealthCheck' => {
                                  'class' => 'Paws::Route53::HealthCheck',
                                  'type' => 'Route53_HealthCheck'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'HealthCheck' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheck => Route53_HealthCheck

A complex type that contains information about one health check that is
associated with the current AWS account.




=cut

