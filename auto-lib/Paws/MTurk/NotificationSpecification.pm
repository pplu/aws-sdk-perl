package Paws::MTurk::NotificationSpecification;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', required => 1);
  has EventTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Transport => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::NotificationSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MTurk::NotificationSpecification object:

  $service_obj->Method(Att1 => { Destination => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MTurk::NotificationSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

The NotificationSpecification data structure describes a HIT event
notification for a HIT type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => Str

  The target for notification messages. The DestinationE<rsquo>s format
is determined by the specified Transport:

=over

=item *

When Transport is Email, the Destination is your email address.

=item *

When Transport is SQS, the Destination is your queue URL.

=item *

When Transport is SNS, the Destination is the ARN of your topic.

=back



=head2 B<REQUIRED> EventTypes => ArrayRef[Str|Undef]

  The list of events that should cause notifications to be sent. Valid
Values: AssignmentAccepted | AssignmentAbandoned | AssignmentReturned |
AssignmentSubmitted | AssignmentRejected | AssignmentApproved |
HITCreated | HITExtended | HITDisposed | HITReviewable | HITExpired |
Ping. The Ping event is only valid for the SendTestEventNotification
operation.


=head2 B<REQUIRED> Transport => Str

  The method Amazon Mechanical Turk uses to send the notification. Valid
Values: Email | SQS | SNS.


=head2 B<REQUIRED> Version => Str

  The version of the Notification API to use. Valid value is 2006-05-05.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

