# Generated from default/object.tt
package Paws::CognitoIdp::AuthEventType;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_EventRiskType CognitoIdp_EventFeedbackType CognitoIdp_EventContextDataType CognitoIdp_ChallengeResponseType/;
  has ChallengeResponses => (is => 'ro', isa => ArrayRef[CognitoIdp_ChallengeResponseType]);
  has CreationDate => (is => 'ro', isa => Str);
  has EventContextData => (is => 'ro', isa => CognitoIdp_EventContextDataType);
  has EventFeedback => (is => 'ro', isa => CognitoIdp_EventFeedbackType);
  has EventId => (is => 'ro', isa => Str);
  has EventResponse => (is => 'ro', isa => Str);
  has EventRisk => (is => 'ro', isa => CognitoIdp_EventRiskType);
  has EventType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventRisk' => {
                                'type' => 'CognitoIdp_EventRiskType',
                                'class' => 'Paws::CognitoIdp::EventRiskType'
                              },
               'ChallengeResponses' => {
                                         'class' => 'Paws::CognitoIdp::ChallengeResponseType',
                                         'type' => 'ArrayRef[CognitoIdp_ChallengeResponseType]'
                                       },
               'EventContextData' => {
                                       'class' => 'Paws::CognitoIdp::EventContextDataType',
                                       'type' => 'CognitoIdp_EventContextDataType'
                                     },
               'EventFeedback' => {
                                    'class' => 'Paws::CognitoIdp::EventFeedbackType',
                                    'type' => 'CognitoIdp_EventFeedbackType'
                                  },
               'EventType' => {
                                'type' => 'Str'
                              },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'EventId' => {
                              'type' => 'Str'
                            },
               'EventResponse' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AuthEventType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::AuthEventType object:

  $service_obj->Method(Att1 => { ChallengeResponses => $value, ..., EventType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::AuthEventType object:

  $result = $service_obj->Method(...);
  $result->Att1->ChallengeResponses

=head1 DESCRIPTION

The authentication event type.

=head1 ATTRIBUTES


=head2 ChallengeResponses => ArrayRef[CognitoIdp_ChallengeResponseType]

  The challenge responses.


=head2 CreationDate => Str

  The creation date


=head2 EventContextData => CognitoIdp_EventContextDataType

  The user context data captured at the time of an event request. It
provides additional information about the client from which event the
request is received.


=head2 EventFeedback => CognitoIdp_EventFeedbackType

  A flag specifying the user feedback captured at the time of an event
request is good or bad.


=head2 EventId => Str

  The event ID.


=head2 EventResponse => Str

  The event response.


=head2 EventRisk => CognitoIdp_EventRiskType

  The event risk.


=head2 EventType => Str

  The event type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

