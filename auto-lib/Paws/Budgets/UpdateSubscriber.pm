# Generated from json/callargs_class.tt

package Paws::Budgets::UpdateSubscriber;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Budgets::Types qw/Budgets_Notification Budgets_Subscriber/;
  has AccountId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has BudgetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has NewSubscriber => (is => 'ro', isa => Budgets_Subscriber, required => 1, predicate => 1);
  has Notification => (is => 'ro', isa => Budgets_Notification, required => 1, predicate => 1);
  has OldSubscriber => (is => 'ro', isa => Budgets_Subscriber, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateSubscriber');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Budgets::UpdateSubscriberResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BudgetName' => {
                                 'type' => 'Str'
                               },
               'NewSubscriber' => {
                                    'type' => 'Budgets_Subscriber',
                                    'class' => 'Paws::Budgets::Subscriber'
                                  },
               'OldSubscriber' => {
                                    'type' => 'Budgets_Subscriber',
                                    'class' => 'Paws::Budgets::Subscriber'
                                  },
               'Notification' => {
                                   'class' => 'Paws::Budgets::Notification',
                                   'type' => 'Budgets_Notification'
                                 },
               'AccountId' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'BudgetName' => 1,
                    'OldSubscriber' => 1,
                    'NewSubscriber' => 1,
                    'Notification' => 1,
                    'AccountId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::UpdateSubscriber - Arguments for method UpdateSubscriber on L<Paws::Budgets>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSubscriber on the
L<AWS Budgets|Paws::Budgets> service. Use the attributes of this class
as arguments to method UpdateSubscriber.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSubscriber.

=head1 SYNOPSIS

    my $budgets = Paws->service('Budgets');
    my $UpdateSubscriberResponse = $budgets->UpdateSubscriber(
      AccountId     => 'MyAccountId',
      BudgetName    => 'MyBudgetName',
      NewSubscriber => {
        Address          => 'MySubscriberAddress',    # min: 1, max: 2147483647
        SubscriptionType => 'SNS',                    # values: SNS, EMAIL

      },
      Notification => {
        ComparisonOperator =>
          'GREATER_THAN',    # values: GREATER_THAN, LESS_THAN, EQUAL_TO
        NotificationType  => 'ACTUAL',    # values: ACTUAL, FORECASTED
        Threshold         => 1,           # max: 1000000000
        NotificationState => 'OK',        # values: OK, ALARM; OPTIONAL
        ThresholdType =>
          'PERCENTAGE',    # values: PERCENTAGE, ABSOLUTE_VALUE; OPTIONAL
      },
      OldSubscriber => {
        Address          => 'MySubscriberAddress',    # min: 1, max: 2147483647
        SubscriptionType => 'SNS',                    # values: SNS, EMAIL

      },

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/budgets/UpdateSubscriber>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The C<accountId> that is associated with the budget whose subscriber
you want to update.



=head2 B<REQUIRED> BudgetName => Str

The name of the budget whose subscriber you want to update.



=head2 B<REQUIRED> NewSubscriber => Budgets_Subscriber

The updated subscriber that is associated with a budget notification.



=head2 B<REQUIRED> Notification => Budgets_Notification

The notification whose subscriber you want to update.



=head2 B<REQUIRED> OldSubscriber => Budgets_Subscriber

The previous subscriber that is associated with a budget notification.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSubscriber in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

