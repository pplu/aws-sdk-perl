
package Paws::CostExplorer::DeleteCostCategoryDefinition;
  use Moose;
  has CostCategoryArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCostCategoryDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::DeleteCostCategoryDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DeleteCostCategoryDefinition - Arguments for method DeleteCostCategoryDefinition on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCostCategoryDefinition on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method DeleteCostCategoryDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCostCategoryDefinition.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $DeleteCostCategoryDefinitionResponse =
      $ce->DeleteCostCategoryDefinition(
      CostCategoryArn => 'MyArn',

      );

    # Results:
    my $CostCategoryArn =
      $DeleteCostCategoryDefinitionResponse->CostCategoryArn;
    my $EffectiveEnd = $DeleteCostCategoryDefinitionResponse->EffectiveEnd;

 # Returns a L<Paws::CostExplorer::DeleteCostCategoryDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/DeleteCostCategoryDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CostCategoryArn => Str

The unique identifier for your Cost Category.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCostCategoryDefinition in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

