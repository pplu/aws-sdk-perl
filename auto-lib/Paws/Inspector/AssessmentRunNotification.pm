package Paws::Inspector::AssessmentRunNotification;
  use Moose;
  has Date => (is => 'ro', isa => 'Str', request_name => 'date', traits => ['NameInRequest'], required => 1);
  has Error => (is => 'ro', isa => 'Bool', request_name => 'error', traits => ['NameInRequest'], required => 1);
  has Event => (is => 'ro', isa => 'Str', request_name => 'event', traits => ['NameInRequest'], required => 1);
  has Message => (is => 'ro', isa => 'Str', request_name => 'message', traits => ['NameInRequest']);
  has SnsPublishStatusCode => (is => 'ro', isa => 'Str', request_name => 'snsPublishStatusCode', traits => ['NameInRequest']);
  has SnsTopicArn => (is => 'ro', isa => 'Str', request_name => 'snsTopicArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentRunNotification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentRunNotification object:

  $service_obj->Method(Att1 => { Date => $value, ..., SnsTopicArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentRunNotification object:

  $result = $service_obj->Method(...);
  $result->Att1->Date

=head1 DESCRIPTION

Used as one of the elements of the AssessmentRun data type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Date => Str

  The date of the notification.


=head2 B<REQUIRED> Error => Bool

  The Boolean value that specifies whether the notification represents an
error.


=head2 B<REQUIRED> Event => Str

  The event for which a notification is sent.


=head2 Message => Str

  The message included in the notification.


=head2 SnsPublishStatusCode => Str

  The status code of the SNS notification.


=head2 SnsTopicArn => Str

  The SNS topic to which the SNS notification is sent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

