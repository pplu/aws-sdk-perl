
package Paws::Route53Resolver::ListResolverRules;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolverRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListResolverRulesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverRules - Arguments for method ListResolverRules on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolverRules on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListResolverRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolverRules.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListResolverRulesResponse = $route53resolver->ListResolverRules(
      Filters => [
        {
          Name   => 'MyFilterName',    # min: 1, max: 64; OPTIONAL
          Values => [
            'MyFilterValue', ...       # min: 1, max: 64
          ],                           # OPTIONAL
        },
        ...
      ],                               # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $MaxResults    = $ListResolverRulesResponse->MaxResults;
    my $NextToken     = $ListResolverRulesResponse->NextToken;
    my $ResolverRules = $ListResolverRulesResponse->ResolverRules;

    # Returns a L<Paws::Route53Resolver::ListResolverRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListResolverRules>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]

An optional specification to return a subset of resolver rules, such as
all resolver rules that are associated with the same resolver endpoint.

If you submit a second or subsequent C<ListResolverRules> request and
specify the C<NextToken> parameter, you must use the same values for
C<Filters>, if any, as in the previous request.



=head2 MaxResults => Int

The maximum number of resolver rules that you want to return in the
response to a C<ListResolverRules> request. If you don't specify a
value for C<MaxResults>, Resolver returns up to 100 resolver rules.



=head2 NextToken => Str

For the first C<ListResolverRules> request, omit this value.

If you have more than C<MaxResults> resolver rules, you can submit
another C<ListResolverRules> request to get the next group of resolver
rules. In the next request, specify the value of C<NextToken> from the
previous response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolverRules in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

