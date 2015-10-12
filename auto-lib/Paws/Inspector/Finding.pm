package Paws::Inspector::Finding;
  use Moose;
  has agentId => (is => 'ro', isa => 'Str');
  has attributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]');
  has autoScalingGroup => (is => 'ro', isa => 'Str');
  has description => (is => 'ro', isa => 'Paws::Inspector::LocalizedText');
  has finding => (is => 'ro', isa => 'Paws::Inspector::LocalizedText');
  has findingArn => (is => 'ro', isa => 'Str');
  has recommendation => (is => 'ro', isa => 'Paws::Inspector::LocalizedText');
  has ruleName => (is => 'ro', isa => 'Str');
  has rulesPackageArn => (is => 'ro', isa => 'Str');
  has runArn => (is => 'ro', isa => 'Str');
  has severity => (is => 'ro', isa => 'Str');
  has userAttributes => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Attribute]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Finding

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Finding object:

  $service_obj->Method(Att1 => { agentId => $value, ..., userAttributes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Finding object:

  $result = $service_obj->Method(...);
  $result->Att1->agentId

=head1 ATTRIBUTES

=head2 agentId => Str

  The EC2 instance ID where the agent is installed that is used during
the assessment that generates the finding.

=head2 attributes => ArrayRef[Paws::Inspector::Attribute]

  The system-defined attributes for the finding.

=head2 autoScalingGroup => Str

  The autoscaling group of the EC2 instance where the agent is installed
that is used during the assessment that generates the finding.

=head2 description => Paws::Inspector::LocalizedText

  The description of the finding.

=head2 finding => Paws::Inspector::LocalizedText

  A short description that identifies the finding.

=head2 findingArn => Str

  The ARN specifying the finding.

=head2 recommendation => Paws::Inspector::LocalizedText

  The recommendation for the finding.

=head2 ruleName => Str

  The rule name that is used to generate the finding.

=head2 rulesPackageArn => Str

  The ARN of the rules package that is used to generate the finding.

=head2 runArn => Str

  The ARN of the assessment run that generated the finding.

=head2 severity => Str

  The finding severity. Values can be set to I<High>, I<Medium>, I<Low>,
and I<Informational>.

=head2 userAttributes => ArrayRef[Paws::Inspector::Attribute]

  The user-defined attributes that are assigned to the finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

