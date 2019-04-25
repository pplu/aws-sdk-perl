
package Paws::Route53::ListQueryLoggingConfigs;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', query_name => 'hostedzoneid', traits => ['ParamInQuery']);
  has MaxResults => (is => 'ro', isa => 'Str', query_name => 'maxresults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nexttoken', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListQueryLoggingConfigs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/queryloggingconfig');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListQueryLoggingConfigsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListQueryLoggingConfigs - Arguments for method ListQueryLoggingConfigs on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListQueryLoggingConfigs on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListQueryLoggingConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListQueryLoggingConfigs.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListQueryLoggingConfigsResponse = $route53->ListQueryLoggingConfigs(
      HostedZoneId => 'MyResourceId',         # OPTIONAL
      MaxResults   => 'MyMaxResults',         # OPTIONAL
      NextToken    => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListQueryLoggingConfigsResponse->NextToken;
    my $QueryLoggingConfigs =
      $ListQueryLoggingConfigsResponse->QueryLoggingConfigs;

    # Returns a L<Paws::Route53::ListQueryLoggingConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListQueryLoggingConfigs>

=head1 ATTRIBUTES


=head2 HostedZoneId => Str

(Optional) If you want to list the query logging configuration that is
associated with a hosted zone, specify the ID in C<HostedZoneId>.

If you don't specify a hosted zone ID, C<ListQueryLoggingConfigs>
returns all of the configurations that are associated with the current
AWS account.



=head2 MaxResults => Str

(Optional) The maximum number of query logging configurations that you
want Amazon Route 53 to return in response to the current request. If
the current AWS account has more than C<MaxResults> configurations, use
the value of ListQueryLoggingConfigsResponse$NextToken in the response
to get the next page of results.

If you don't specify a value for C<MaxResults>, Route 53 returns up to
100 configurations.



=head2 NextToken => Str

(Optional) If the current AWS account has more than C<MaxResults> query
logging configurations, use C<NextToken> to get the second and
subsequent pages of results.

For the first C<ListQueryLoggingConfigs> request, omit this value.

For the second and subsequent requests, get the value of C<NextToken>
from the previous response and specify that value for C<NextToken> in
the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListQueryLoggingConfigs in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

