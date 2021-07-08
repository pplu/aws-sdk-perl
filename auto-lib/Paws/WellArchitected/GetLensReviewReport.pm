
package Paws::WellArchitected::GetLensReviewReport;
  use Moose;
  has LensAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'LensAlias', required => 1);
  has MilestoneNumber => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MilestoneNumber');
  has WorkloadId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'WorkloadId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLensReviewReport');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/workloads/{WorkloadId}/lensReviews/{LensAlias}/report');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetLensReviewReportOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetLensReviewReport - Arguments for method GetLensReviewReport on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLensReviewReport on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetLensReviewReport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLensReviewReport.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetLensReviewReportOutput = $wellarchitected->GetLensReviewReport(
      LensAlias       => 'MyLensAlias',
      WorkloadId      => 'MyWorkloadId',
      MilestoneNumber => 1,                # OPTIONAL
    );

    # Results:
    my $LensReviewReport = $GetLensReviewReportOutput->LensReviewReport;
    my $MilestoneNumber  = $GetLensReviewReportOutput->MilestoneNumber;
    my $WorkloadId       = $GetLensReviewReportOutput->WorkloadId;

    # Returns a L<Paws::WellArchitected::GetLensReviewReportOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetLensReviewReport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LensAlias => Str





=head2 MilestoneNumber => Int





=head2 B<REQUIRED> WorkloadId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLensReviewReport in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

