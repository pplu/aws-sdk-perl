
package Paws::Budgets::UpdateBudget;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has NewBudget => (is => 'ro', isa => 'Paws::Budgets::Budget', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBudget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::UpdateBudgetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::UpdateBudget - Arguments for method UpdateBudget on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBudget on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method UpdateBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBudget.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $UpdateBudgetResponse = $budgets->UpdateBudget(
      AccountId => 'MyAccountId',
      NewBudget => {
        BudgetName => 'MyBudgetName',    # min: 1, max: 100
        BudgetType =>
          'USAGE',    # values: USAGE, COST, RI_UTILIZATION, RI_COVERAGE
        TimeUnit    => 'DAILY',    # values: DAILY, MONTHLY, QUARTERLY, ANNUALLY
        BudgetLimit => {
          Amount => 'MyNumericValue',    # min: 1, max: 2147483647
          Unit   => 'MyUnitValue',       # min: 1, max: 2147483647

        },    # OPTIONAL
        CalculatedSpend => {
          ActualSpend => {
            Amount => 'MyNumericValue',    # min: 1, max: 2147483647
            Unit   => 'MyUnitValue',       # min: 1, max: 2147483647

          },    # OPTIONAL
          ForecastedSpend => {
            Amount => 'MyNumericValue',    # min: 1, max: 2147483647
            Unit   => 'MyUnitValue',       # min: 1, max: 2147483647

          },    # OPTIONAL
        },    # OPTIONAL
        CostFilters => {
          'MyGenericString' => [
            'MyGenericString', ...    # max: 2147483647
          ],                          # key: max: 2147483647
        },    # OPTIONAL
        CostTypes => {
          IncludeCredit            => 1,    # OPTIONAL
          IncludeDiscount          => 1,    # OPTIONAL
          IncludeOtherSubscription => 1,    # OPTIONAL
          IncludeRecurring         => 1,    # OPTIONAL
          IncludeRefund            => 1,    # OPTIONAL
          IncludeSubscription      => 1,    # OPTIONAL
          IncludeSupport           => 1,    # OPTIONAL
          IncludeTax               => 1,    # OPTIONAL
          IncludeUpfront           => 1,    # OPTIONAL
          UseAmortized             => 1,    # OPTIONAL
          UseBlended               => 1,    # OPTIONAL
        },    # OPTIONAL
        LastUpdatedTime => '1970-01-01T01:00:00',    # OPTIONAL
        TimePeriod      => {
          End   => '1970-01-01T01:00:00',            # OPTIONAL
          Start => '1970-01-01T01:00:00',            # OPTIONAL
        },    # OPTIONAL
      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/UpdateBudget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget that you want to
update.



=head2 B<REQUIRED> NewBudget => L<Paws::Budgets::Budget>

The budget that you want to update your budget to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBudget in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

