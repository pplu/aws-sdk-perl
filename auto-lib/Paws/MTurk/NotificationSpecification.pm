package Paws::MTurk::NotificationSpecification;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', required => 1);
  has EventTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Transport => (is => 'ro', isa => 'Str', required => 1);
  has Version => (is => 'ro', isa => 'Str');
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

  The destination for notification messages. or email notifications (if
Transport is Email), this is an email address. For Amazon Simple Queue
Service (Amazon SQS) notifications (if Transport is SQS), this is the
URL for your Amazon SQS queue.


=head2 EventTypes => ArrayRef[Str|Undef]

  The list of events that should cause notifications to be sent. Valid
Values: AssignmentAccepted | AssignmentAbandoned | AssignmentReturned |
AssignmentSubmitted | AssignmentRejected | AssignmentApproved |
HITCreated | HITExtended | HITDisposed | HITReviewable | HITExpired |
Ping. The Ping event is only valid for the SendTestEventNotification
operation.


=head2 B<REQUIRED> Transport => Str

  The method Amazon Mechanical Turk uses to send the notification. Valid
Values: Email | SQS.


=head2 Version => Str

  The version of the Notification API to use. Valid value is 2006-05-05.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

