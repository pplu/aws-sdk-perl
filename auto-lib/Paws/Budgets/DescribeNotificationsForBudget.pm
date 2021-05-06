
package Paws::Budgets::DescribeNotificationsForBudget;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNotificationsForBudget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DescribeNotificationsForBudgetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeNotificationsForBudget - Arguments for method DescribeNotificationsForBudget on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNotificationsForBudget on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DescribeNotificationsForBudget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNotificationsForBudget.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DescribeNotificationsForBudgetResponse =
      $budgets->DescribeNotificationsForBudget(
      AccountId  => 'MyAccountId',
      BudgetName => 'MyBudgetName',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
      );

    # Results:
    my $NextToken     = $DescribeNotificationsForBudgetResponse->NextToken;
    my $Notifications = $DescribeNotificationsForBudgetResponse->Notifications;

    # Returns a L<Paws::Budgets::DescribeNotificationsForBudgetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DescribeNotificationsForBudget>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget whose notifications
you want descriptions of.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget whose notifications you want descriptions of.



=head2 MaxResults => Int

An optional integer that represents how many entries a paginated
response contains. The maximum is 100.



=head2 NextToken => Str

The pagination token that you include in your request to indicate the
next set of results that you want to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNotificationsForBudget in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

