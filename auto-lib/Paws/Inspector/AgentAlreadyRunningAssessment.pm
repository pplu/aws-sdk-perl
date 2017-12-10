package Paws::Inspector::AgentAlreadyRunningAssessment;
  use Moose;
  has AgentId => (is => 'ro', isa => 'Str', request_name => 'agentId', traits => ['NameInRequest'], required => 1);
  has AssessmentRunArn => (is => 'ro', isa => 'Str', request_name => 'assessmentRunArn', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::AgentAlreadyRunningAssessment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::AgentAlreadyRunningAssessment object:

  $service_obj->Method(Att1 => { AgentId => $value, ..., AssessmentRunArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::AgentAlreadyRunningAssessment object:

  $result = $service_obj->Method(...);
  $result->Att1->AgentId

=head1 DESCRIPTION

Used in the exception error that is thrown if you start an assessment
run for an assessment target that includes an EC2 instance that is
already participating in another started assessment run.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentId => Str

  ID of the agent that is running on an EC2 instance that is already
participating in another started assessment run.


=head2 B<REQUIRED> AssessmentRunArn => Str

  The ARN of the assessment run that has already been started.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

