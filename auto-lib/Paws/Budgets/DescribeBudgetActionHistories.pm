
package Paws::Budgets::DescribeBudgetActionHistories;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ActionId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TimePeriod => (is => 'ro', isa => 'Paws::Budgets::TimePeriod');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBudgetActionHistories');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DescribeBudgetActionHistoriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetActionHistories - Arguments for method DescribeBudgetActionHistories on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBudgetActionHistories on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DescribeBudgetActionHistories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBudgetActionHistories.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DescribeBudgetActionHistoriesResponse =
      $budgets->DescribeBudgetActionHistories(
      AccountId  => 'MyAccountId',
      ActionId   => 'MyActionId',
      BudgetName => 'MyBudgetName',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
      TimePeriod => {
        End   => '1970-01-01T01:00:00',    # OPTIONAL
        Start => '1970-01-01T01:00:00',    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ActionHistories =
      $DescribeBudgetActionHistoriesResponse->ActionHistories;
    my $NextToken = $DescribeBudgetActionHistoriesResponse->NextToken;

    # Returns a L<Paws::Budgets::DescribeBudgetActionHistoriesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DescribeBudgetActionHistories>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> ActionId => Str

A system-generated universally unique identifier (UUID) for the action.



=head2 B<REQUIRED> BudgetName => Str





=head2 MaxResults => Int





=head2 NextToken => Str





=head2 TimePeriod => L<Paws::Budgets::TimePeriod>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBudgetActionHistories in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

