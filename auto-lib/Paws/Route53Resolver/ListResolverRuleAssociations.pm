
package Paws::Route53Resolver::ListResolverRuleAssociations;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResolverRuleAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::ListResolverRuleAssociationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverRuleAssociations - Arguments for method ListResolverRuleAssociations on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResolverRuleAssociations on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method ListResolverRuleAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResolverRuleAssociations.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $ListResolverRuleAssociationsResponse =
      $route53resolver->ListResolverRuleAssociations(
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
    my $MaxResults = $ListResolverRuleAssociationsResponse->MaxResults;
    my $NextToken  = $ListResolverRuleAssociationsResponse->NextToken;
    my $ResolverRuleAssociations =
      $ListResolverRuleAssociationsResponse->ResolverRuleAssociations;

# Returns a L<Paws::Route53Resolver::ListResolverRuleAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/ListResolverRuleAssociations>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::Route53Resolver::Filter>]

An optional specification to return a subset of resolver rules, such as
resolver rules that are associated with the same VPC ID.

If you submit a second or subsequent C<ListResolverRuleAssociations>
request and specify the C<NextToken> parameter, you must use the same
values for C<Filters>, if any, as in the previous request.



=head2 MaxResults => Int

The maximum number of rule associations that you want to return in the
response to a C<ListResolverRuleAssociations> request. If you don't
specify a value for C<MaxResults>, Resolver returns up to 100 rule
associations.



=head2 NextToken => Str

For the first C<ListResolverRuleAssociation> request, omit this value.

If you have more than C<MaxResults> rule associations, you can submit
another C<ListResolverRuleAssociation> request to get the next group of
rule associations. In the next request, specify the value of
C<NextToken> from the previous response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResolverRuleAssociations in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

