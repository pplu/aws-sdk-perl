
package Paws::Route53Resolver::ListResolverQueryLogConfigs;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolverQueryLogConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListResolverQueryLogConfigsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverQueryLogConfigs - Arguments for method ListResolverQueryLogConfigs on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolverQueryLogConfigs on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListResolverQueryLogConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolverQueryLogConfigs.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListResolverQueryLogConfigsResponse =
      $route53resolver->ListResolverQueryLogConfigs(
      Filters => [
        {
          Name   => 'MyFilterName',    # min: 1, max: 64; OPTIONAL
          Values => [
            'MyFilterValue', ...       # min: 1, max: 600
          ],                           # OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
      SortBy     => 'MySortByKey',     # OPTIONAL
      SortOrder  => 'ASCENDING',       # OPTIONAL
      );

    # Results:
    my $NextToken = $ListResolverQueryLogConfigsResponse->NextToken;
    my $ResolverQueryLogConfigs =
      $ListResolverQueryLogConfigsResponse->ResolverQueryLogConfigs;
    my $TotalCount = $ListResolverQueryLogConfigsResponse->TotalCount;
    my $TotalFilteredCount =
      $ListResolverQueryLogConfigsResponse->TotalFilteredCount;

# Returns a L<Paws::Route53Resolver::ListResolverQueryLogConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListResolverQueryLogConfigs>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]

An optional specification to return a subset of query logging
configurations.

If you submit a second or subsequent C<ListResolverQueryLogConfigs>
request and specify the C<NextToken> parameter, you must use the same
values for C<Filters>, if any, as in the previous request.



=head2 MaxResults => Int

The maximum number of query logging configurations that you want to
return in the response to a C<ListResolverQueryLogConfigs> request. If
you don't specify a value for C<MaxResults>, Resolver returns up to 100
query logging configurations.



=head2 NextToken => Str

For the first C<ListResolverQueryLogConfigs> request, omit this value.

If there are more than C<MaxResults> query logging configurations that
match the values that you specify for C<Filters>, you can submit
another C<ListResolverQueryLogConfigs> request to get the next group of
configurations. In the next request, specify the value of C<NextToken>
from the previous response.



=head2 SortBy => Str

The element that you want Resolver to sort query logging configurations
by.

If you submit a second or subsequent C<ListResolverQueryLogConfigs>
request and specify the C<NextToken> parameter, you must use the same
value for C<SortBy>, if any, as in the previous request.

Valid values include the following elements:

=over

=item *

C<Arn>: The ARN of the query logging configuration

=item *

C<AssociationCount>: The number of VPCs that are associated with the
specified configuration

=item *

C<CreationTime>: The date and time that Resolver returned when the
configuration was created

=item *

C<CreatorRequestId>: The value that was specified for
C<CreatorRequestId> when the configuration was created

=item *

C<DestinationArn>: The location that logs are sent to

=item *

C<Id>: The ID of the configuration

=item *

C<Name>: The name of the configuration

=item *

C<OwnerId>: The AWS account number of the account that created the
configuration

=item *

C<ShareStatus>: Whether the configuration is shared with other AWS
accounts or shared with the current account by another AWS account.
Sharing is configured through AWS Resource Access Manager (AWS RAM).

=item *

C<Status>: The current status of the configuration. Valid values
include the following:

=over

=item *

C<CREATING>: Resolver is creating the query logging configuration.

=item *

C<CREATED>: The query logging configuration was successfully created.
Resolver is logging queries that originate in the specified VPC.

=item *

C<DELETING>: Resolver is deleting this query logging configuration.

=item *

C<FAILED>: Resolver either couldn't create or couldn't delete the query
logging configuration. Here are two common causes:

=over

=item *

The specified destination (for example, an Amazon S3 bucket) was
deleted.

=item *

Permissions don't allow sending logs to the destination.

=back

=back

=back




=head2 SortOrder => Str

If you specified a value for C<SortBy>, the order that you want query
logging configurations to be listed in, C<ASCENDING> or C<DESCENDING>.

If you submit a second or subsequent C<ListResolverQueryLogConfigs>
request and specify the C<NextToken> parameter, you must use the same
value for C<SortOrder>, if any, as in the previous request.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolverQueryLogConfigs in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

