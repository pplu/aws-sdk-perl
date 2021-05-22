
package Paws::Budgets::DescribeBudgetActionsForAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBudgetActionsForAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::DescribeBudgetActionsForAccountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetActionsForAccount - Arguments for method DescribeBudgetActionsForAccount on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBudgetActionsForAccount on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method DescribeBudgetActionsForAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBudgetActionsForAccount.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $DescribeBudgetActionsForAccountResponse =
      $budgets->DescribeBudgetActionsForAccount(
      AccountId  => 'MyAccountId',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyGenericString',    # OPTIONAL
      );

    # Results:
    my $Actions   = $DescribeBudgetActionsForAccountResponse->Actions;
    my $NextToken = $DescribeBudgetActionsForAccountResponse->NextToken;

   # Returns a L<Paws::Budgets::DescribeBudgetActionsForAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/DescribeBudgetActionsForAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 MaxResults => Int





=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBudgetActionsForAccount in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

