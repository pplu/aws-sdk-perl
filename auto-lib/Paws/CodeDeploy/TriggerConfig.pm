package Paws::CodeDeploy::TriggerConfig;
  use Moose;
  has TriggerEvents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'triggerEvents', traits => ['NameInRequest']);
  has TriggerName => (is => 'ro', isa => 'Str', request_name => 'triggerName', traits => ['NameInRequest']);
  has TriggerTargetArn => (is => 'ro', isa => 'Str', request_name => 'triggerTargetArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::TriggerConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::TriggerConfig object:

  $service_obj->Method(Att1 => { TriggerEvents => $value, ..., TriggerTargetArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::TriggerConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->TriggerEvents

=head1 DESCRIPTION

Information about notification triggers for the deployment group.

=head1 ATTRIBUTES


=head2 TriggerEvents => ArrayRef[Str|Undef]

  The event type or types for which notifications are triggered.


=head2 TriggerName => Str

  The name of the notification trigger.


=head2 TriggerTargetArn => Str

  The ARN of the Amazon Simple Notification Service topic through which
notifications about deployment or instance events are sent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

