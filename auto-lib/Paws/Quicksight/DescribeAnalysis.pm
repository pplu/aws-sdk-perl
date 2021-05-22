
package Paws::Quicksight::DescribeAnalysis;
  use Moose;
  has AnalysisId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AnalysisId', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAnalysis');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/analyses/{AnalysisId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::DescribeAnalysisResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::DescribeAnalysis - Arguments for method DescribeAnalysis on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAnalysis on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method DescribeAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAnalysis.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $DescribeAnalysisResponse = $quicksight->DescribeAnalysis(
      AnalysisId   => 'MyRestrictiveResourceId',
      AwsAccountId => 'MyAwsAccountId',

    );

    # Results:
    my $Analysis  = $DescribeAnalysisResponse->Analysis;
    my $RequestId = $DescribeAnalysisResponse->RequestId;
    my $Status    = $DescribeAnalysisResponse->Status;

    # Returns a L<Paws::Quicksight::DescribeAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/DescribeAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisId => Str

The ID of the analysis that you're describing. The ID is part of the
URL of the analysis.



=head2 B<REQUIRED> AwsAccountId => Str

The ID of the AWS account that contains the analysis. You must be using
the AWS account that the analysis is in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAnalysis in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

