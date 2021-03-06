# Generated by default/object.tt
package Paws::IoTEvents::AlarmNotification;
  use Moose;
  has NotificationActions => (is => 'ro', isa => 'ArrayRef[Paws::IoTEvents::NotificationAction]', request_name => 'notificationActions', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::AlarmNotification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::AlarmNotification object:

  $service_obj->Method(Att1 => { NotificationActions => $value, ..., NotificationActions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::AlarmNotification object:

  $result = $service_obj->Method(...);
  $result->Att1->NotificationActions

=head1 DESCRIPTION

Contains information about one or more notification actions.

=head1 ATTRIBUTES


=head2 NotificationActions => ArrayRef[L<Paws::IoTEvents::NotificationAction>]

Contains the notification settings of an alarm model. The settings
apply to all alarms that were created based on this alarm model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

