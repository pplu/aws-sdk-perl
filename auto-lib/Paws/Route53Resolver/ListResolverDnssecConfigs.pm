
package Paws::Route53Resolver::ListResolverDnssecConfigs;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolverDnssecConfigs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListResolverDnssecConfigsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverDnssecConfigs - Arguments for method ListResolverDnssecConfigs on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolverDnssecConfigs on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListResolverDnssecConfigs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolverDnssecConfigs.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListResolverDnssecConfigsResponse =
      $route53resolver->ListResolverDnssecConfigs(
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
      );

    # Results:
    my $NextToken = $ListResolverDnssecConfigsResponse->NextToken;
    my $ResolverDnssecConfigs =
      $ListResolverDnssecConfigsResponse->ResolverDnssecConfigs;

 # Returns a L<Paws::Route53Resolver::ListResolverDnssecConfigsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListResolverDnssecConfigs>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]

An optional specification to return a subset of objects.



=head2 MaxResults => Int

I<Optional>: An integer that specifies the maximum number of DNSSEC
configuration results that you want Amazon Route 53 to return. If you
don't specify a value for C<MaxResults>, Route 53 returns up to 100
configuration per page.



=head2 NextToken => Str

(Optional) If the current AWS account has more than C<MaxResults>
DNSSEC configurations, use C<NextToken> to get the second and
subsequent pages of results.

For the first C<ListResolverDnssecConfigs> request, omit this value.

For the second and subsequent requests, get the value of C<NextToken>
from the previous response and specify that value for C<NextToken> in
the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolverDnssecConfigs in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

