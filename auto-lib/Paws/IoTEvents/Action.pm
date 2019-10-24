# Generated from default/object.tt
package Paws::IoTEvents::Action;
  use Moo;
  use Types::Standard qw//;
  use Paws::IoTEvents::Types qw/IoTEvents_SetVariableAction IoTEvents_SNSTopicPublishAction IoTEvents_SetTimerAction IoTEvents_ResetTimerAction IoTEvents_ClearTimerAction IoTEvents_IotTopicPublishAction/;
  has ClearTimer => (is => 'ro', isa => IoTEvents_ClearTimerAction);
  has IotTopicPublish => (is => 'ro', isa => IoTEvents_IotTopicPublishAction);
  has ResetTimer => (is => 'ro', isa => IoTEvents_ResetTimerAction);
  has SetTimer => (is => 'ro', isa => IoTEvents_SetTimerAction);
  has SetVariable => (is => 'ro', isa => IoTEvents_SetVariableAction);
  has Sns => (is => 'ro', isa => IoTEvents_SNSTopicPublishAction);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SetTimer' => {
                               'class' => 'Paws::IoTEvents::SetTimerAction',
                               'type' => 'IoTEvents_SetTimerAction'
                             },
               'Sns' => {
                          'class' => 'Paws::IoTEvents::SNSTopicPublishAction',
                          'type' => 'IoTEvents_SNSTopicPublishAction'
                        },
               'IotTopicPublish' => {
                                      'class' => 'Paws::IoTEvents::IotTopicPublishAction',
                                      'type' => 'IoTEvents_IotTopicPublishAction'
                                    },
               'ClearTimer' => {
                                 'class' => 'Paws::IoTEvents::ClearTimerAction',
                                 'type' => 'IoTEvents_ClearTimerAction'
                               },
               'SetVariable' => {
                                  'class' => 'Paws::IoTEvents::SetVariableAction',
                                  'type' => 'IoTEvents_SetVariableAction'
                                },
               'ResetTimer' => {
                                 'class' => 'Paws::IoTEvents::ResetTimerAction',
                                 'type' => 'IoTEvents_ResetTimerAction'
                               }
             },
  'NameInRequest' => {
                       'SetTimer' => 'setTimer',
                       'Sns' => 'sns',
                       'IotTopicPublish' => 'iotTopicPublish',
                       'ClearTimer' => 'clearTimer',
                       'SetVariable' => 'setVariable',
                       'ResetTimer' => 'resetTimer'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::Action

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::Action object:

  $service_obj->Method(Att1 => { ClearTimer => $value, ..., Sns => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::Action object:

  $result = $service_obj->Method(...);
  $result->Att1->ClearTimer

=head1 DESCRIPTION

An action to be performed when the C<condition> is TRUE.

=head1 ATTRIBUTES


=head2 ClearTimer => IoTEvents_ClearTimerAction

  Information needed to clear the timer.


=head2 IotTopicPublish => IoTEvents_IotTopicPublishAction

  Publishes an MQTT message with the given topic to the AWS IoT Message
Broker.


=head2 ResetTimer => IoTEvents_ResetTimerAction

  Information needed to reset the timer.


=head2 SetTimer => IoTEvents_SetTimerAction

  Information needed to set the timer.


=head2 SetVariable => IoTEvents_SetVariableAction

  Sets a variable to a specified value.


=head2 Sns => IoTEvents_SNSTopicPublishAction

  Sends an Amazon SNS message.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

