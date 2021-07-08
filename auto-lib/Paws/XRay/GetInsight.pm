
package Paws::XRay::GetInsight;
  use Moose;
  has InsightId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInsight');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Insight');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetInsightResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetInsight - Arguments for method GetInsight on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInsight on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetInsight.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInsight.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetInsightResult = $xray->GetInsight(
      InsightId => 'MyInsightId',

    );

    # Results:
    my $Insight = $GetInsightResult->Insight;

    # Returns a L<Paws::XRay::GetInsightResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetInsight>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightId => Str

The insight's unique identifier. Use the GetInsightSummaries action to
retrieve an InsightId.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInsight in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

