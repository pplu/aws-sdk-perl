package Paws::Budgets::NotificationWithSubscribers;
  use Moose;
  has Notification => (is => 'ro', isa => 'Paws::Budgets::Notification', required => 1);
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Subscriber]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::NotificationWithSubscribers

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Budgets::NotificationWithSubscribers object:

  $service_obj->Method(Att1 => { Notification => $value, ..., Subscribers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Budgets::NotificationWithSubscribers object:

  $result = $service_obj->Method(...);
  $result->Att1->Notification

=head1 DESCRIPTION

A notification with subscribers. A notification can have one SNS
subscriber and up to 10 email subscribers, for a total of 11
subscribers.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Notification => L<Paws::Budgets::Notification>

  The notification that is associated with a budget.


=head2 B<REQUIRED> Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]

  A list of subscribers who are subscribed to this notification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

