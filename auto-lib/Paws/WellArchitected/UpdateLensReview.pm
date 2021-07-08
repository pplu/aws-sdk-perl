
package Paws::WellArchitected::UpdateLensReview;
  use Moose;
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has LensNotes => (is => 'ro', isa => 'Str');
  has PillarNotes => (is => 'ro', isa => 'Paws::WellArchitected::PillarNotes');
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLensReview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/lensReviews/{LensAlias}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::UpdateLensReviewOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateLensReview - Arguments for method UpdateLensReview on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLensReview on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateLensReview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLensReview.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $UpdateLensReviewOutput = $wellarchitected->UpdateLensReview(
      LensAlias   => 'MyLensAlias',
      WorkloadId  => 'MyWorkloadId',
      LensNotes   => 'MyNotes',        # OPTIONAL
      PillarNotes => {
        'MyPillarId' => 'MyNotes',     # key: min: 1, max: 64, value: max: 2084
      },    # OPTIONAL
    );

    # Results:
    my $LensReview = $UpdateLensReviewOutput->LensReview;
    my $WorkloadId = $UpdateLensReviewOutput->WorkloadId;

    # Returns a L<Paws::WellArchitected::UpdateLensReviewOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateLensReview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LensAlias => Str





=head2 LensNotes => Str





=head2 PillarNotes => L<Paws::WellArchitected::PillarNotes>





=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLensReview in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

