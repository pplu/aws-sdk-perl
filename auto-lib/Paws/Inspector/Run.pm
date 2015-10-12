package Paws::Inspector::Run;
  use Moose;
  has assessmentArn => (is => 'ro', isa => 'Str');
  has completionTime => (is => 'ro', isa => 'Str');
  has creationTime => (is => 'ro', isa => 'Str');
  has rulesPackages => (is => 'ro', isa => 'ArrayRef[Str]');
  has runArn => (is => 'ro', isa => 'Str');
  has runName => (is => 'ro', isa => 'Str');
  has runState => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::Run

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::Run object:

  $service_obj->Method(Att1 => { assessmentArn => $value, ..., runState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::Run object:

  $result = $service_obj->Method(...);
  $result->Att1->assessmentArn

=head1 ATTRIBUTES

=head2 assessmentArn => Str

  The ARN of the assessment that is associated with the run.

=head2 completionTime => Str

  Run completion time that corresponds to the rules packages evaluation
completion time or failure.

=head2 creationTime => Str

  Run creation time that corresponds to the data collection completion
time or failure.

=head2 rulesPackages => ArrayRef[Str]

  Rules packages selected for the run of the assessment.

=head2 runArn => Str

  The ARN of the run.

=head2 runName => Str

  The auto-generated name for the run.

=head2 runState => Str

  The state of the run. Values can be set to I<DataCollectionComplete>,
I<EvaluatingPolicies>, I<EvaluatingPoliciesErrorCanRetry>,
I<Completed>, I<Failed>, I<TombStoned>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

