package Paws::Health::EventDetailsErrorItem;
  use Moose;
  has ErrorMessage => (is => 'ro', isa => 'Str', xmlname => 'errorMessage', request_name => 'errorMessage', traits => ['Unwrapped','NameInRequest']);
  has ErrorName => (is => 'ro', isa => 'Str', xmlname => 'errorName', request_name => 'errorName', traits => ['Unwrapped','NameInRequest']);
  has EventArn => (is => 'ro', isa => 'Str', xmlname => 'eventArn', request_name => 'eventArn', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EventDetailsErrorItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EventDetailsErrorItem object:

  $service_obj->Method(Att1 => { ErrorMessage => $value, ..., EventArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EventDetailsErrorItem object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorMessage

=head1 DESCRIPTION

Error information returned when a DescribeEventDetails operation cannot
find a specified event.

=head1 ATTRIBUTES


=head2 ErrorMessage => Str

  A message that describes the error.


=head2 ErrorName => Str

  The name of the error.


=head2 EventArn => Str

  The unique identifier for the event. Format:
C<arn:aws:health:I<event-region>::event/I<EVENT_TYPE_PLUS_ID> >.
Example: C<arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331>



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

