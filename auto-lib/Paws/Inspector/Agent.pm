package Paws::Inspector::Agent;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', xmlname => 'accountId', request_name => 'accountId', traits => ['Unwrapped','NameInRequest']);
  has AgentHealth => (is => 'ro', isa => 'Str', xmlname => 'agentHealth', request_name => 'agentHealth', traits => ['Unwrapped','NameInRequest']);
  has AgentHealthCode => (is => 'ro', isa => 'Str', xmlname => 'agentHealthCode', request_name => 'agentHealthCode', traits => ['Unwrapped','NameInRequest']);
  has AgentHealthDetails => (is => 'ro', isa => 'Str', xmlname => 'agentHealthDetails', request_name => 'agentHealthDetails', traits => ['Unwrapped','NameInRequest']);
  has AgentId => (is => 'ro', isa => 'Str', xmlname => 'agentId', request_name => 'agentId', traits => ['Unwrapped','NameInRequest']);
  has AssessmentArn => (is => 'ro', isa => 'Str', xmlname => 'assessmentArn', request_name => 'assessmentArn', traits => ['Unwrapped','NameInRequest']);
  has AutoScalingGroup => (is => 'ro', isa => 'Str', xmlname => 'autoScalingGroup', request_name => 'autoScalingGroup', traits => ['Unwrapped','NameInRequest']);
  has Telemetry => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Telemetry]', xmlname => 'telemetry', request_name => 'telemetry', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Agent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Agent object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Telemetry => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Agent object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Contains information about an Inspector agent. This data type is used
as a response element in the ListAssessmentAgents action.

=head1 ATTRIBUTES


=head2 AccountId => Str

  AWS account of the EC2 instance where the agent is installed.


=head2 AgentHealth => Str

  The current health state of the agent. Values can be set to I<HEALTHY>
or I<UNHEALTHY>.


=head2 AgentHealthCode => Str

  The detailed health state of the agent. Values can be set to
I<RUNNING>, I<HEALTHY>, I<UNHEALTHY>, I<UNKNOWN>, I<BLACKLISTED>,
I<SHUTDOWN>, I<THROTTLED>.


=head2 AgentHealthDetails => Str

  The description for the agent health code.


=head2 AgentId => Str

  The EC2 instance ID where the agent is installed.


=head2 AssessmentArn => Str

  The ARN of the assessment that is associated with the agent.


=head2 AutoScalingGroup => Str

  This data type property is currently not used.


=head2 Telemetry => ArrayRef[L<Paws::Inspector::Telemetry>]

  The Inspector application data metrics collected by the agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

