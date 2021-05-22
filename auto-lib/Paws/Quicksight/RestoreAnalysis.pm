
package Paws::Quicksight::RestoreAnalysis;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AnalysisId', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RestoreAnalysis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/restore/analyses/{AnalysisId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::RestoreAnalysisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::RestoreAnalysis - Arguments for method RestoreAnalysis on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RestoreAnalysis on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method RestoreAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RestoreAnalysis.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $RestoreAnalysisResponse = $quicksight->RestoreAnalysis(
      AnalysisId   => 'MyRestrictiveResourceId',
      AwsAccountId => 'MyAwsAccountId',

    );

    # Results:
    my $AnalysisId = $RestoreAnalysisResponse->AnalysisId;
    my $Arn        = $RestoreAnalysisResponse->Arn;
    my $RequestId  = $RestoreAnalysisResponse->RequestId;
    my $Status     = $RestoreAnalysisResponse->Status;

    # Returns a L<Paws::Quicksight::RestoreAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/RestoreAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID of the analysis that you're restoring.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the analysis.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RestoreAnalysis in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

