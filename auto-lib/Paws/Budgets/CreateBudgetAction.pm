
package Paws::Budgets::CreateBudgetAction;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has ActionThreshold => (is => 'ro', isa => 'Paws::Budgets::ActionThreshold', required => 1);
  has ActionType => (is => 'ro', isa => 'Str', required => 1);
  has ApprovalModel => (is => 'ro', isa => 'Str', required => 1);
  has BudgetName => (is => 'ro', isa => 'Str', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::Budgets::Definition', required => 1);
  has ExecutionRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Subscriber]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateBudgetAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Budgets::CreateBudgetActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::CreateBudgetAction - Arguments for method CreateBudgetAction on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateBudgetAction on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method CreateBudgetAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateBudgetAction.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $CreateBudgetActionResponse = $budgets->CreateBudgetAction(
      AccountId       => 'MyAccountId',
      ActionThreshold => {
        ActionThresholdType =>
          'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE
        ActionThresholdValue => 1,    # max: 40000000000

      },
      ActionType    => 'APPLY_IAM_POLICY',
      ApprovalModel => 'AUTOMATIC',
      BudgetName    => 'MyBudgetName',
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
      },
      ExecutionRoleArn => 'MyRoleArn',
      NotificationType => 'ACTUAL',
      Subscribers      => [
        {
          Address          => 'MySubscriberAddress',   # min: 1, max: 2147483647
          SubscriptionType => 'SNS',                   # values: SNS, EMAIL

        },
        ...
      ],

    );

    # Results:
    my $AccountId  = $CreateBudgetActionResponse->AccountId;
    my $ActionId   = $CreateBudgetActionResponse->ActionId;
    my $BudgetName = $CreateBudgetActionResponse->BudgetName;

    # Returns a L<Paws::Budgets::CreateBudgetActionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/CreateBudgetAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str





=head2 B<REQUIRED> ActionThreshold => L<Paws::Budgets::ActionThreshold>





=head2 B<REQUIRED> ActionType => Str

The type of action. This defines the type of tasks that can be carried
out by this action. This field also determines the format for
definition.

Valid values are: C<"APPLY_IAM_POLICY">, C<"APPLY_SCP_POLICY">, C<"RUN_SSM_DOCUMENTS">

=head2 B<REQUIRED> ApprovalModel => Str

This specifies if the action needs manual or automatic approval.

Valid values are: C<"AUTOMATIC">, C<"MANUAL">

=head2 B<REQUIRED> BudgetName => Str





=head2 B<REQUIRED> Definition => L<Paws::Budgets::Definition>





=head2 B<REQUIRED> ExecutionRoleArn => Str

The role passed for action execution and reversion. Roles and actions
must be in the same account.



=head2 B<REQUIRED> NotificationType => Str



Valid values are: C<"ACTUAL">, C<"FORECASTED">

=head2 B<REQUIRED> Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateBudgetAction in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

