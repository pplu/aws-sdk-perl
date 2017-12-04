package Paws::Inspector::EventSubscription;
  use Moose;
  has Event => (is => 'ro', isa => 'Str', request_name => 'event', traits => ['NameInRequest'], required => 1);
  has SubscribedAt => (is => 'ro', isa => 'Str', request_name => 'subscribedAt', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::EventSubscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::EventSubscription object:

  $service_obj->Method(Att1 => { Event => $value, ..., SubscribedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::EventSubscription object:

  $result = $service_obj->Method(...);
  $result->Att1->Event

=head1 DESCRIPTION

This data type is used in the Subscription data type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => Str

  The event for which Amazon Simple Notification Service (SNS)
notifications are sent.


=head2 B<REQUIRED> SubscribedAt => Str

  The time at which SubscribeToEvent is called.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

