
package Paws::XRay::GetSamplingTargets;
  use Moose;
  has SamplingStatisticsDocuments => (is => 'ro', isa => 'ArrayRef[Paws::XRay::SamplingStatisticsDocument]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSamplingTargets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/SamplingTargets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::XRay::GetSamplingTargetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetSamplingTargets - Arguments for method GetSamplingTargets on L<Paws::XRay>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSamplingTargets on the
L<AWS X-Ray|Paws::XRay> service. Use the attributes of this class
as arguments to method GetSamplingTargets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSamplingTargets.

=head1 SYNOPSIS

    my $xray = Paws->service('XRay');
    my $GetSamplingTargetsResult = $xray->GetSamplingTargets(
      SamplingStatisticsDocuments => [
        {
          ClientID     => 'MyClientID',            # min: 24, max: 24
          RequestCount => 1,
          RuleName     => 'MyRuleName',            # min: 1, max: 32
          SampledCount => 1,
          Timestamp    => '1970-01-01T01:00:00',
          BorrowCount  => 1,                       # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $LastRuleModification = $GetSamplingTargetsResult->LastRuleModification;
    my $SamplingTargetDocuments =
      $GetSamplingTargetsResult->SamplingTargetDocuments;
    my $UnprocessedStatistics =
      $GetSamplingTargetsResult->UnprocessedStatistics;

    # Returns a L<Paws::XRay::GetSamplingTargetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/xray/GetSamplingTargets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SamplingStatisticsDocuments => ArrayRef[L<Paws::XRay::SamplingStatisticsDocument>]

Information about rules that the service is using to sample requests.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSamplingTargets in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

