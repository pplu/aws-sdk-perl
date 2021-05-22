
package Paws::CostExplorer::ListCostCategoryDefinitions;
  use Moose;
  has EffectiveOn => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCostCategoryDefinitions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::ListCostCategoryDefinitionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::ListCostCategoryDefinitions - Arguments for method ListCostCategoryDefinitions on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCostCategoryDefinitions on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method ListCostCategoryDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCostCategoryDefinitions.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $ListCostCategoryDefinitionsResponse = $ce->ListCostCategoryDefinitions(
      EffectiveOn => 'MyZonedDateTime',    # OPTIONAL
      MaxResults  => 1,                    # OPTIONAL
      NextToken   => 'MyNextPageToken',    # OPTIONAL
    );

    # Results:
    my $CostCategoryReferences =
      $ListCostCategoryDefinitionsResponse->CostCategoryReferences;
    my $NextToken = $ListCostCategoryDefinitionsResponse->NextToken;

  # Returns a L<Paws::CostExplorer::ListCostCategoryDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/ListCostCategoryDefinitions>

=head1 ATTRIBUTES


=head2 EffectiveOn => Str

The date when the Cost Category was effective.



=head2 MaxResults => Int

The number of entries a paginated response contains.



=head2 NextToken => Str

The token to retrieve the next set of results. Amazon Web Services
provides the token when the response from a previous call has more
results than the maximum page size.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCostCategoryDefinitions in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

