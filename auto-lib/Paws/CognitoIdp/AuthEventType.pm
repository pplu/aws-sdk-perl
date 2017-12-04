package Paws::CognitoIdp::AuthEventType;
  use Moose;
  has ChallengeResponses => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdp::ChallengeResponseType]');
  has CreationDate => (is => 'ro', isa => 'Str');
  has EventContextData => (is => 'ro', isa => 'Paws::CognitoIdp::EventContextDataType');
  has EventFeedback => (is => 'ro', isa => 'Paws::CognitoIdp::EventFeedbackType');
  has EventId => (is => 'ro', isa => 'Str');
  has EventResponse => (is => 'ro', isa => 'Str');
  has EventRisk => (is => 'ro', isa => 'Paws::CognitoIdp::EventRiskType');
  has EventType => (is => 'ro', isa => 'Str');
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


=head2 ChallengeResponses => ArrayRef[L<Paws::CognitoIdp::ChallengeResponseType>]

  The challenge responses.


=head2 CreationDate => Str

  The creation date


=head2 EventContextData => L<Paws::CognitoIdp::EventContextDataType>

  The user context data captured at the time of an event request. It
provides additional information about the client from which event the
request is received.


=head2 EventFeedback => L<Paws::CognitoIdp::EventFeedbackType>

  A flag specifying the user feedback captured at the time of an event
request is good or bad.


=head2 EventId => Str

  The event ID.


=head2 EventResponse => Str

  The event response.


=head2 EventRisk => L<Paws::CognitoIdp::EventRiskType>

  The event risk.


=head2 EventType => Str

  The event type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

