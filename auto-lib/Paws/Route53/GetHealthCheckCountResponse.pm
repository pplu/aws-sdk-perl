
package Paws::Route53::GetHealthCheckCountResponse;
  use Moo;

  use Types::Standard qw/Str Int/;
  use Paws::Route53::Types qw//;
  has HealthCheckCount => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HealthCheckCount' => {
                                       'type' => 'Int'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'HealthCheckCount' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHealthCheckCountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckCount => Int

The number of health checks associated with the current AWS account.




=cut

