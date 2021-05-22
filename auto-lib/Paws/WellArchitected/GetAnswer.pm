
package Paws::WellArchitected::GetAnswer;
  use Moose;
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has MilestoneNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MilestoneNumber');
  has QuestionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'QuestionId', required => 1);
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAnswer');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetAnswerOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetAnswer - Arguments for method GetAnswer on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAnswer on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetAnswer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAnswer.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetAnswerOutput = $wellarchitected->GetAnswer(
      LensAlias       => 'MyLensAlias',
      QuestionId      => 'MyQuestionId',
      WorkloadId      => 'MyWorkloadId',
      MilestoneNumber => 1,                # OPTIONAL
    );

    # Results:
    my $Answer          = $GetAnswerOutput->Answer;
    my $LensAlias       = $GetAnswerOutput->LensAlias;
    my $MilestoneNumber = $GetAnswerOutput->MilestoneNumber;
    my $WorkloadId      = $GetAnswerOutput->WorkloadId;

    # Returns a L<Paws::WellArchitected::GetAnswerOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetAnswer>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LensAlias => Str





=head2 MilestoneNumber => Int





=head2 B<REQUIRED> QuestionId => Str





=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAnswer in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

