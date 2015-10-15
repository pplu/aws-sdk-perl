package Paws::Inspector::Run;
  use Moose;
  has AssessmentArn => (is => 'ro', isa => 'Str', xmlname => 'assessmentArn', request_name => 'assessmentArn', traits => ['Unwrapped','NameInRequest']);
  has CompletionTime => (is => 'ro', isa => 'Str', xmlname => 'completionTime', request_name => 'completionTime', traits => ['Unwrapped','NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', xmlname => 'creationTime', request_name => 'creationTime', traits => ['Unwrapped','NameInRequest']);
  has RulesPackages => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'rulesPackages', request_name => 'rulesPackages', traits => ['Unwrapped','NameInRequest']);
  has RunArn => (is => 'ro', isa => 'Str', xmlname => 'runArn', request_name => 'runArn', traits => ['Unwrapped','NameInRequest']);
  has RunName => (is => 'ro', isa => 'Str', xmlname => 'runName', request_name => 'runName', traits => ['Unwrapped','NameInRequest']);
  has RunState => (is => 'ro', isa => 'Str', xmlname => 'runState', request_name => 'runState', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Run

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Run object:

  $service_obj->Method(Att1 => { AssessmentArn => $value, ..., RunState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Run object:

  $result = $service_obj->Method(...);
  $result->Att1->AssessmentArn

=head1 DESCRIPTION

A snapshot of an Inspector assessment that contains the assessment's
findings.

This data type is used as the response element in the DescribeRun
action.

=head1 ATTRIBUTES

=head2 AssessmentArn => Str

  The ARN of the assessment that is associated with the run.

=head2 CompletionTime => Str

  Run completion time that corresponds to the rules packages evaluation
completion time or failure.

=head2 CreationTime => Str

  Run creation time that corresponds to the data collection completion
time or failure.

=head2 RulesPackages => ArrayRef[Str]

  Rules packages selected for the run of the assessment.

=head2 RunArn => Str

  The ARN of the run.

=head2 RunName => Str

  The auto-generated name for the run.

=head2 RunState => Str

  The state of the run. Values can be set to I<DataCollectionComplete>,
I<EvaluatingPolicies>, I<EvaluatingPoliciesErrorCanRetry>,
I<Completed>, I<Failed>, I<TombStoned>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

