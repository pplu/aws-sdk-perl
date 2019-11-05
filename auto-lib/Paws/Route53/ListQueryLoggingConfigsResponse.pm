
package Paws::Route53::ListQueryLoggingConfigsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryLoggingConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Route53::QueryLoggingConfig]', request_name => 'QueryLoggingConfig', traits => ['NameInRequest'], required => 1);


  has _request_id => (is => 'ro', isa => 'Str');
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



=head2 B<REQUIRED> QueryLoggingConfigs => ArrayRef[L<Paws::Route53::QueryLoggingConfig>]

An array that contains one QueryLoggingConfig
(https://docs.aws.amazon.com/Route53/latest/APIReference/API_QueryLoggingConfig.html)
element for each configuration for DNS query logging that is associated
with the current AWS account.




=cut

