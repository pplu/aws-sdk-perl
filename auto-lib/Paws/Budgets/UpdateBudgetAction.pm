
package Paws::Budgets::UpdateBudgetAction;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ActionId => (is => 'ro', isa => 'Str', required => 1);
  has ActionThreshold => (is => 'ro', isa => 'Paws::Budgets::ActionThreshold');
  has ApprovalModel => (is => 'ro', isa => 'Str');
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::Budgets::Definition');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has NotificationType => (is => 'ro', isa => 'Str');
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Subscriber]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBudgetAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::UpdateBudgetActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::UpdateBudgetAction - Arguments for method UpdateBudgetAction on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBudgetAction on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method UpdateBudgetAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBudgetAction.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $UpdateBudgetActionResponse = $budgets->UpdateBudgetAction(
      AccountId       => 'MyAccountId',
      ActionId        => 'MyActionId',
      BudgetName      => 'MyBudgetName',
      ActionThreshold => {
        ActionThresholdType =>
          'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE
        ActionThresholdValue => 1,    # max: 40000000000

      },    # OPTIONAL
      ApprovalModel => 'AUTOMATIC',    # OPTIONAL
      Definition    => {
        IamActionDefinition => {
          PolicyArn => 'MyPolicyArn',    # min: 25, max: 684
          Groups    => [
            'MyGroup', ...               # min: 1, max: 640
          ],                             # min: 1, max: 100; OPTIONAL
          Roles => [
            'MyRole', ...                # min: 1, max: 576
          ],                             # min: 1, max: 100; OPTIONAL
          Users => [
            'MyUser', ...                # min: 1, max: 576
          ],                             # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        ScpActionDefinition => {
          PolicyId  => 'MyPolicyId',    # min: 10, max: 130
          TargetIds => [
            'MyTargetId', ...           # min: 12, max: 68
          ],                            # min: 1, max: 100

        },    # OPTIONAL
        SsmActionDefinition => {
          ActionSubType => 'STOP_EC2_INSTANCES'
          ,    # values: STOP_EC2_INSTANCES, STOP_RDS_INSTANCES
          InstanceIds => [
            'MyInstanceId', ...    # min: 1, max: 63
          ],                       # min: 1, max: 100
          Region => 'MyRegion',    # min: 9, max: 20

        },    # OPTIONAL
      },    # OPTIONAL
      ExecutionRoleArn => 'MyRoleArn',    # OPTIONAL
      NotificationType => 'ACTUAL',       # OPTIONAL
      Subscribers      => [
        {
          Address          => 'MySubscriberAddress',   # min: 1, max: 2147483647
          SubscriptionType => 'SNS',                   # values: SNS, EMAIL

        },
        ...
      ],                                               # OPTIONAL
    );

    # Results:
    my $AccountId  = $UpdateBudgetActionResponse->AccountId;
    my $BudgetName = $UpdateBudgetActionResponse->BudgetName;
    my $NewAction  = $UpdateBudgetActionResponse->NewAction;
    my $OldAction  = $UpdateBudgetActionResponse->OldAction;

    # Returns a L<Paws::Budgets::UpdateBudgetActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/UpdateBudgetAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> ActionId => Str

A system-generated universally unique identifier (UUID) for the action.



=head2 ActionThreshold => L<Paws::Budgets::ActionThreshold>





=head2 ApprovalModel => Str

This specifies if the action needs manual or automatic approval.

Valid values are: C<"AUTOMATIC">, C<"MANUAL">

=head2 B<REQUIRED> BudgetName => Str





=head2 Definition => L<Paws::Budgets::Definition>





=head2 ExecutionRoleArn => Str

The role passed for action execution and reversion. Roles and actions
must be in the same account.



=head2 NotificationType => Str



Valid values are: C<"ACTUAL">, C<"FORECASTED">

=head2 Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBudgetAction in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

