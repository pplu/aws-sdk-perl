package Paws::Inspector::AssessmentRunAgent;
  use Moose;
  has AgentHealth => (is => 'ro', isa => 'Str', request_name => 'agentHealth', traits => ['NameInRequest'], required => 1);
  has AgentHealthCode => (is => 'ro', isa => 'Str', request_name => 'agentHealthCode', traits => ['NameInRequest'], required => 1);
  has AgentHealthDetails => (is => 'ro', isa => 'Str', request_name => 'agentHealthDetails', traits => ['NameInRequest']);
  has AgentId => (is => 'ro', isa => 'Str', request_name => 'agentId', traits => ['NameInRequest'], required => 1);
  has AssessmentRunArn => (is => 'ro', isa => 'Str', request_name => 'assessmentRunArn', traits => ['NameInRequest'], required => 1);
  has AutoScalingGroup => (is => 'ro', isa => 'Str', request_name => 'autoScalingGroup', traits => ['NameInRequest']);
  has TelemetryMetadata => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::TelemetryMetadata]', request_name => 'telemetryMetadata', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AssessmentRunAgent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AssessmentRunAgent object:

  $service_obj->Method(Att1 => { AgentHealth => $value, ..., TelemetryMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AssessmentRunAgent object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentHealth

=head1 DESCRIPTION

Contains information about an Amazon Inspector agent. This data type is
used as a response element in the ListAssessmentRunAgents action.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentHealth => Str

  The current health state of the agent.


=head2 B<REQUIRED> AgentHealthCode => Str

  The detailed health state of the agent.


=head2 AgentHealthDetails => Str

  The description for the agent health code.


=head2 B<REQUIRED> AgentId => Str

  The AWS account of the EC2 instance where the agent is installed.


=head2 B<REQUIRED> AssessmentRunArn => Str

  The ARN of the assessment run that is associated with the agent.


=head2 AutoScalingGroup => Str

  The Auto Scaling group of the EC2 instance that is specified by the
agent ID.


=head2 B<REQUIRED> TelemetryMetadata => ArrayRef[L<Paws::Inspector::TelemetryMetadata>]

  The Amazon Inspector application data metrics that are collected by the
agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

