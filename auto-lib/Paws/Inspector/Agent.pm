package Paws::Inspector::Agent;
  use Moose;
  has accountId => (is => 'ro', isa => 'Str');
  has agentHealth => (is => 'ro', isa => 'Str');
  has agentHealthCode => (is => 'ro', isa => 'Str');
  has agentHealthDetails => (is => 'ro', isa => 'Str');
  has agentId => (is => 'ro', isa => 'Str');
  has assessmentArn => (is => 'ro', isa => 'Str');
  has autoScalingGroup => (is => 'ro', isa => 'Str');
  has telemetry => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Telemetry]');
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

  $service_obj->Method(Att1 => { accountId => $value, ..., telemetry => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Agent object:

  $result = $service_obj->Method(...);
  $result->Att1->accountId

=head1 DESCRIPTION

Contains information about an Inspector agent. This data type is used
as a response element in the ListAssessmentAgents action.

=head1 ATTRIBUTES

=head2 accountId => Str

  AWS account of the EC2 instance where the agent is installed.

=head2 agentHealth => Str

  The current health state of the agent. Values can be set to I<HEALTHY>
or I<UNHEALTHY>.

=head2 agentHealthCode => Str

  The detailed health state of the agent. Values can be set to
I<RUNNING>, I<HEALTHY>, I<UNHEALTHY>, I<UNKNOWN>, I<BLACKLISTED>,
I<SHUTDOWN>, I<THROTTLED>.

=head2 agentHealthDetails => Str

  The description for the agent health code.

=head2 agentId => Str

  The EC2 instance ID where the agent is installed.

=head2 assessmentArn => Str

  The ARN of the assessment that is associated with the agent.

=head2 autoScalingGroup => Str

  This data type property is currently not used.

=head2 telemetry => ArrayRef[L<Paws::Inspector::Telemetry>]

  The Inspector application data metrics collected by the agent.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

