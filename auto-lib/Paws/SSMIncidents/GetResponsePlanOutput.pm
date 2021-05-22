
package Paws::SSMIncidents::GetResponsePlanOutput;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::Action]', traits => ['NameInRequest'], request_name => 'actions');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ChatChannel => (is => 'ro', isa => 'Paws::SSMIncidents::ChatChannel', traits => ['NameInRequest'], request_name => 'chatChannel');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has Engagements => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'engagements');
  has IncidentTemplate => (is => 'ro', isa => 'Paws::SSMIncidents::IncidentTemplate', traits => ['NameInRequest'], request_name => 'incidentTemplate', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::GetResponsePlanOutput

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::SSMIncidents::Action>]

The actions that this response plan takes at the beginning of the
incident.


=head2 B<REQUIRED> Arn => Str

The ARN of the response plan.


=head2 ChatChannel => L<Paws::SSMIncidents::ChatChannel>

The AWS Chatbot chat channel used for collaboration during an incident.


=head2 DisplayName => Str

The long format name of the response plan. Can contain spaces.


=head2 Engagements => ArrayRef[Str|Undef]

The contacts and escalation plans that the response plan engages during
an incident.


=head2 B<REQUIRED> IncidentTemplate => L<Paws::SSMIncidents::IncidentTemplate>

Details used to create the incident when using this response plan.


=head2 B<REQUIRED> Name => Str

The short format name of the response plan. Can't contain spaces.


=head2 _request_id => Str


=cut

