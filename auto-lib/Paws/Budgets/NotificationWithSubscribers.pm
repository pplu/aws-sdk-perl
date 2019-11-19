# Generated from default/object.tt
package Paws::Budgets::NotificationWithSubscribers;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Budgets::Types qw/Budgets_Notification Budgets_Subscriber/;
  has Notification => (is => 'ro', isa => Budgets_Notification, required => 1);
  has Subscribers => (is => 'ro', isa => ArrayRef[Budgets_Subscriber], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Subscribers' => {
                                  'type' => 'ArrayRef[Budgets_Subscriber]',
                                  'class' => 'Paws::Budgets::Subscriber'
                                },
               'Notification' => {
                                   'type' => 'Budgets_Notification',
                                   'class' => 'Paws::Budgets::Notification'
                                 }
             },
  'IsRequired' => {
                    'Subscribers' => 1,
                    'Notification' => 1
                  }
}
;
    return $Params_map;
  }


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


=head2 B<REQUIRED> Notification => Budgets_Notification

  The notification that is associated with a budget.


=head2 B<REQUIRED> Subscribers => ArrayRef[Budgets_Subscriber]

  A list of subscribers who are subscribed to this notification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Budgets>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

