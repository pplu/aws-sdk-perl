package Paws::Inspector::Finding;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', xmlname => 'agentId', request_name => 'agentId', traits => ['Unwrapped','NameInRequest']);
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', xmlname => 'attributes', request_name => 'attributes', traits => ['Unwrapped','NameInRequest']);
  has AutoScalingGroup => (is => 'ro', isa => 'Str', xmlname => 'autoScalingGroup', request_name => 'autoScalingGroup', traits => ['Unwrapped','NameInRequest']);
  has Description => (is => 'ro', isa => 'Paws::Inspector::LocalizedText', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has Finding => (is => 'ro', isa => 'Paws::Inspector::LocalizedText', xmlname => 'finding', request_name => 'finding', traits => ['Unwrapped','NameInRequest']);
  has FindingArn => (is => 'ro', isa => 'Str', xmlname => 'findingArn', request_name => 'findingArn', traits => ['Unwrapped','NameInRequest']);
  has Recommendation => (is => 'ro', isa => 'Paws::Inspector::LocalizedText', xmlname => 'recommendation', request_name => 'recommendation', traits => ['Unwrapped','NameInRequest']);
  has RuleName => (is => 'ro', isa => 'Str', xmlname => 'ruleName', request_name => 'ruleName', traits => ['Unwrapped','NameInRequest']);
  has RulesPackageArn => (is => 'ro', isa => 'Str', xmlname => 'rulesPackageArn', request_name => 'rulesPackageArn', traits => ['Unwrapped','NameInRequest']);
  has RunArn => (is => 'ro', isa => 'Str', xmlname => 'runArn', request_name => 'runArn', traits => ['Unwrapped','NameInRequest']);
  has Severity => (is => 'ro', isa => 'Str', xmlname => 'severity', request_name => 'severity', traits => ['Unwrapped','NameInRequest']);
  has UserAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]', xmlname => 'userAttributes', request_name => 'userAttributes', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Finding

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Finding object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., UserAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Finding object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

Contains information about an Inspector finding.

This data type is used as the response element in the DescribeFinding
action.

=head1 ATTRIBUTES


=head2 AgentId => Str

  The EC2 instance ID where the agent is installed that is used during
the assessment that generates the finding.


=head2 Attributes => ArrayRef[L<Paws::Inspector::Attribute>]

  The system-defined attributes for the finding.


=head2 AutoScalingGroup => Str

  The autoscaling group of the EC2 instance where the agent is installed
that is used during the assessment that generates the finding.


=head2 Description => L<Paws::Inspector::LocalizedText>

  The description of the finding.


=head2 Finding => L<Paws::Inspector::LocalizedText>

  A short description that identifies the finding.


=head2 FindingArn => Str

  The ARN specifying the finding.


=head2 Recommendation => L<Paws::Inspector::LocalizedText>

  The recommendation for the finding.


=head2 RuleName => Str

  The rule name that is used to generate the finding.


=head2 RulesPackageArn => Str

  The ARN of the rules package that is used to generate the finding.


=head2 RunArn => Str

  The ARN of the assessment run that generated the finding.


=head2 Severity => Str

  The finding severity. Values can be set to I<High>, I<Medium>, I<Low>,
and I<Informational>.


=head2 UserAttributes => ArrayRef[L<Paws::Inspector::Attribute>]

  The user-defined attributes that are assigned to the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

