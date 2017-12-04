
package Paws::Inspector::SubscribeToEvent;
  use Moose;
  has Event => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'event' , required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'topicArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SubscribeToEvent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::SubscribeToEvent - Arguments for method SubscribeToEvent on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SubscribeToEvent on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method SubscribeToEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SubscribeToEvent.

As an example:

  $service_obj->SubscribeToEvent(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => Str

The event for which you want to receive SNS notifications.

Valid values are: C<"ASSESSMENT_RUN_STARTED">, C<"ASSESSMENT_RUN_COMPLETED">, C<"ASSESSMENT_RUN_STATE_CHANGED">, C<"FINDING_REPORTED">, C<"OTHER">

=head2 B<REQUIRED> ResourceArn => Str

The ARN of the assessment template that is used during the event for
which you want to receive SNS notifications.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the SNS topic to which the SNS notifications are sent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SubscribeToEvent in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

