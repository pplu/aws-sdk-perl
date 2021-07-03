
package Paws::CostExplorer::CreateCostCategoryDefinition;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::CostCategoryRule]', required => 1);
  has RuleVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCostCategoryDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::CreateCostCategoryDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CreateCostCategoryDefinition - Arguments for method CreateCostCategoryDefinition on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCostCategoryDefinition on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method CreateCostCategoryDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCostCategoryDefinition.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $CreateCostCategoryDefinitionResponse =
      $ce->CreateCostCategoryDefinition(
      Name        => 'MyCostCategoryName',
      RuleVersion => 'CostCategoryExpression.v1',
      Rules       => [
        {
          Rule => {
            And            => [ <Expression>, ... ],    # OPTIONAL
            CostCategories => {
              Key    => 'MyCostCategoryName',           # min: 1, max: 255
              Values => [ 'MyValue', ... ],             # OPTIONAL
            },    # OPTIONAL
            Dimensions => {
              Key => 'AZ'
              , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, OPERATION, PURCHASE_TYPE, REGION, SERVICE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION; OPTIONAL
              Values => [ 'MyValue', ... ],    # OPTIONAL
            },    # OPTIONAL
            Not  => <Expression>,
            Or   => [ <Expression>, ... ],    # OPTIONAL
            Tags => {
              Key    => 'MyTagKey',            # OPTIONAL
              Values => [ 'MyValue', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          Value => 'MyCostCategoryValue',    # min: 1, max: 255

        },
        ...
      ],

      );

    # Results:
    my $CostCategoryArn =
      $CreateCostCategoryDefinitionResponse->CostCategoryArn;
    my $EffectiveStart = $CreateCostCategoryDefinitionResponse->EffectiveStart;

 # Returns a L<Paws::CostExplorer::CreateCostCategoryDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/CreateCostCategoryDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str





=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::CostExplorer::CostCategoryRule>]

C<CreateCostCategoryDefinition> supports dimensions, Tags, and nested
expressions. Currently the only dimensions supported is
C<LINKED_ACCOUNT>.

Root level C<OR> is not supported. We recommend you create a separate
rule instead.

Rules are processed in order. If there are multiple rules that match
the line item, then the first rule to match is used to determine that
Cost Category value.



=head2 B<REQUIRED> RuleVersion => Str



Valid values are: C<"CostCategoryExpression.v1">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCostCategoryDefinition in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

