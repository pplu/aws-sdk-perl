
package Paws::Route53::CreateQueryLoggingConfigResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_QueryLoggingConfig/;
  has Location => (is => 'ro', isa => Str, required => 1);
  has QueryLoggingConfig => (is => 'ro', isa => Route53_QueryLoggingConfig, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueryLoggingConfig' => {
                                         'class' => 'Paws::Route53::QueryLoggingConfig',
                                         'type' => 'Route53_QueryLoggingConfig'
                                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             }
             },
  'ParamInHeader' => {
                       'Location' => 'Location'
                     },
  'IsRequired' => {
                    'QueryLoggingConfig' => 1,
                    'Location' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateQueryLoggingConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => Str

The unique URL representing the new query logging configuration.



=head2 B<REQUIRED> QueryLoggingConfig => Route53_QueryLoggingConfig

A complex type that contains the ID for a query logging configuration,
the ID of the hosted zone that you want to log queries for, and the ARN
for the log group that you want Amazon Route 53 to send query logs to.




=cut

