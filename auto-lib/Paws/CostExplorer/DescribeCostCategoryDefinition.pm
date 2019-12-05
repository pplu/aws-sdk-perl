
package Paws::CostExplorer::DescribeCostCategoryDefinition;
  use Moose;
  has CostCategoryArn => (is => 'ro', isa => 'Str', required => 1);
  has EffectiveOn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCostCategoryDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::DescribeCostCategoryDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DescribeCostCategoryDefinition - Arguments for method DescribeCostCategoryDefinition on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCostCategoryDefinition on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method DescribeCostCategoryDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCostCategoryDefinition.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $DescribeCostCategoryDefinitionResponse =
      $ce->DescribeCostCategoryDefinition(
      CostCategoryArn => 'MyArn',
      EffectiveOn     => 'MyZonedDateTime',    # OPTIONAL
      );

    # Results:
    my $CostCategory = $DescribeCostCategoryDefinitionResponse->CostCategory;

# Returns a L<Paws::CostExplorer::DescribeCostCategoryDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/DescribeCostCategoryDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CostCategoryArn => Str

The unique identifier for your Cost Category.



=head2 EffectiveOn => Str

The date when the Cost Category was effective.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCostCategoryDefinition in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

