
package Paws::WellArchitected::UpdateAnswer;
  use Moose;
  has IsApplicable => (is => 'ro', isa => 'Bool');
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has Notes => (is => 'ro', isa => 'Str');
  has QuestionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QuestionId', required => 1);
  has SelectedChoices => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnswer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::UpdateAnswerOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateAnswer - Arguments for method UpdateAnswer on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnswer on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateAnswer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnswer.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $UpdateAnswerOutput = $wellarchitected->UpdateAnswer(
      LensAlias       => 'MyLensAlias',
      QuestionId      => 'MyQuestionId',
      WorkloadId      => 'MyWorkloadId',
      IsApplicable    => 1,                # OPTIONAL
      Notes           => 'MyNotes',        # OPTIONAL
      SelectedChoices => [
        'MyChoiceId', ...                  # min: 1, max: 64
      ],    # OPTIONAL
    );

    # Results:
    my $Answer     = $UpdateAnswerOutput->Answer;
    my $LensAlias  = $UpdateAnswerOutput->LensAlias;
    my $WorkloadId = $UpdateAnswerOutput->WorkloadId;

    # Returns a L<Paws::WellArchitected::UpdateAnswerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateAnswer>

=head1 ATTRIBUTES


=head2 IsApplicable => Bool





=head2 B<REQUIRED> LensAlias => Str





=head2 Notes => Str





=head2 B<REQUIRED> QuestionId => Str





=head2 SelectedChoices => ArrayRef[Str|Undef]





=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnswer in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

