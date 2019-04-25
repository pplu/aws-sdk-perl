package Paws::Budgets::Notification;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str', required => 1);
  has NotificationState => (is => 'ro', isa => 'Str');
  has NotificationType => (is => 'ro', isa => 'Str', required => 1);
  has Threshold => (is => 'ro', isa => 'Num', required => 1);
  has ThresholdType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::Notification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::Notification object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., ThresholdType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::Notification object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

A notification that is associated with a budget. A budget can have up
to five notifications.

Each notification must have at least one subscriber. A notification can
have one SNS subscriber and up to 10 email subscribers, for a total of
11 subscribers.

For example, if you have a budget for 200 dollars and you want to be
notified when you go over 160 dollars, create a notification with the
following parameters:

=over

=item *

A notificationType of C<ACTUAL>

=item *

A C<thresholdType> of C<PERCENTAGE>

=item *

A C<comparisonOperator> of C<GREATER_THAN>

=item *

A notification C<threshold> of C<80>

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> ComparisonOperator => Str

  The comparison that is used for this notification.


=head2 NotificationState => Str

  Whether this notification is in alarm. If a budget notification is in
the C<ALARM> state, you have passed the set threshold for the budget.


=head2 B<REQUIRED> NotificationType => Str

  Whether the notification is for how much you have spent (C<ACTUAL>) or
for how much you're forecasted to spend (C<FORECASTED>).


=head2 B<REQUIRED> Threshold => Num

  The threshold that is associated with a notification. Thresholds are
always a percentage.


=head2 ThresholdType => Str

  The type of threshold for a notification. For C<ABSOLUTE_VALUE>
thresholds, AWS notifies you when you go over or are forecasted to go
over your total cost threshold. For C<PERCENTAGE> thresholds, AWS
notifies you when you go over or are forecasted to go over a certain
percentage of your forecasted spend. For example, if you have a budget
for 200 dollars and you have a C<PERCENTAGE> threshold of 80%, AWS
notifies you when you go over 160 dollars.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

