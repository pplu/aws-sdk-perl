
package Paws::Route53::ListQueryLoggingConfigsResponse;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53::Types qw/Route53_QueryLoggingConfig/;
  has NextToken => (is => 'ro', isa => Str);
  has QueryLoggingConfigs => (is => 'ro', isa => ArrayRef[Route53_QueryLoggingConfig], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'QueryLoggingConfigs' => {
                                          'class' => 'Paws::Route53::QueryLoggingConfig',
                                          'type' => 'ArrayRef[Route53_QueryLoggingConfig]'
                                        }
             },
  'IsRequired' => {
                    'QueryLoggingConfigs' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListQueryLoggingConfigsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If a response includes the last of the query logging configurations
that are associated with the current AWS account, C<NextToken> doesn't
appear in the response.

If a response doesn't include the last of the configurations, you can
get more configurations by submitting another ListQueryLoggingConfigs
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_ListQueryLoggingConfigs.html)
request. Get the value of C<NextToken> that Amazon Route 53 returned in
the previous response and include it in C<NextToken> in the next
request.



=head2 B<REQUIRED> QueryLoggingConfigs => ArrayRef[Route53_QueryLoggingConfig]

An array that contains one QueryLoggingConfig
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_QueryLoggingConfig.html)
element for each configuration for DNS query logging that is associated
with the current AWS account.




=cut

