
package Paws::Inspector::UnsubscribeFromEvent;
  use Moose;
  has Event => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'event' , required => 1);
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);
  has TopicArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'topicArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UnsubscribeFromEvent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::UnsubscribeFromEvent - Arguments for method UnsubscribeFromEvent on L<Paws::Inspector>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UnsubscribeFromEvent on the
L<Amazon Inspector|Paws::Inspector> service. Use the attributes of this class
as arguments to method UnsubscribeFromEvent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UnsubscribeFromEvent.

=head1 SYNOPSIS

    my $inspector = Paws->service('Inspector');
    # Unsubscribe from event
    # Disables the process of sending Amazon Simple Notification Service (SNS)
    # notifications about a specified event to a specified SNS topic.
    $inspector->UnsubscribeFromEvent(
      {
        'Event' => 'ASSESSMENT_RUN_COMPLETED',
        'ResourceArn' =>
'arn:aws:inspector:us-west-2:123456789012:target/0-nvgVhaxX/template/0-7sbz2Kz0',
        'TopicArn' => 'arn:aws:sns:us-west-2:123456789012:exampletopic'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector/UnsubscribeFromEvent>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Event => Str

The event for which you want to stop receiving SNS notifications.

Valid values are: C<"ASSESSMENT_RUN_STARTED">, C<"ASSESSMENT_RUN_COMPLETED">, C<"ASSESSMENT_RUN_STATE_CHANGED">, C<"FINDING_REPORTED">, C<"OTHER">

=head2 B<REQUIRED> ResourceArn => Str

The ARN of the assessment template that is used during the event for
which you want to stop receiving SNS notifications.



=head2 B<REQUIRED> TopicArn => Str

The ARN of the SNS topic to which SNS notifications are sent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UnsubscribeFromEvent in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

