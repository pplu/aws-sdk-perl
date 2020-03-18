
package Paws::MTurk::SendTestEventNotification;
  use Moose;
  has Notification => (is => 'ro', isa => 'Paws::MTurk::NotificationSpecification', required => 1);
  has TestEventType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendTestEventNotification');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::SendTestEventNotificationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::SendTestEventNotification - Arguments for method SendTestEventNotification on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendTestEventNotification on the
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method SendTestEventNotification.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendTestEventNotification.

=head1 SYNOPSIS

    my $mturk-requester = Paws->service('MTurk');
    my $SendTestEventNotificationResponse =
      $mturk -requester->SendTestEventNotification(
      Notification => {
        Destination => 'MyString',
        EventTypes  => [
          'AssignmentAccepted',
          ... # values: AssignmentAccepted, AssignmentAbandoned, AssignmentReturned, AssignmentSubmitted, AssignmentRejected, AssignmentApproved, HITCreated, HITExpired, HITReviewable, HITExtended, HITDisposed, Ping
        ],
        Transport => 'Email',      # values: Email, SQS, SNS
        Version   => 'MyString',

      },
      TestEventType => 'AssignmentAccepted',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mturk-requester/SendTestEventNotification>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Notification => L<Paws::MTurk::NotificationSpecification>

The notification specification to test. This value is identical to the
value you would provide to the UpdateNotificationSettings operation
when you establish the notification specification for a HIT type.



=head2 B<REQUIRED> TestEventType => Str

The event to simulate to test the notification specification. This
event is included in the test message even if the notification
specification does not include the event type. The notification
specification does not filter out the test event.

Valid values are: C<"AssignmentAccepted">, C<"AssignmentAbandoned">, C<"AssignmentReturned">, C<"AssignmentSubmitted">, C<"AssignmentRejected">, C<"AssignmentApproved">, C<"HITCreated">, C<"HITExpired">, C<"HITReviewable">, C<"HITExtended">, C<"HITDisposed">, C<"Ping">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendTestEventNotification in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

