
package Paws::Route53::GetQueryLoggingConfigResponse;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::Route53::Types qw/Route53_QueryLoggingConfig/;
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
                                }
             },
  'IsRequired' => {
                    'QueryLoggingConfig' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetQueryLoggingConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryLoggingConfig => Route53_QueryLoggingConfig

A complex type that contains information about the query logging
configuration that you specified in a GetQueryLoggingConfig
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetQueryLoggingConfig.html)
request.




=cut

