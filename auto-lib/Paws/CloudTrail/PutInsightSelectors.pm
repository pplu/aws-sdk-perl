
package Paws::CloudTrail::PutInsightSelectors;
  use Moose;
  has InsightSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::InsightSelector]', required => 1);
  has TrailName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInsightSelectors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::PutInsightSelectorsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::PutInsightSelectors - Arguments for method PutInsightSelectors on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInsightSelectors on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method PutInsightSelectors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInsightSelectors.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $PutInsightSelectorsResponse = $cloudtrail->PutInsightSelectors(
      InsightSelectors => [
        {
          InsightType =>
            'ApiCallRateInsight',    # values: ApiCallRateInsight; OPTIONAL
        },
        ...
      ],
      TrailName => 'MyString',

    );

    # Results:
    my $InsightSelectors = $PutInsightSelectorsResponse->InsightSelectors;
    my $TrailARN         = $PutInsightSelectorsResponse->TrailARN;

    # Returns a L<Paws::CloudTrail::PutInsightSelectorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/PutInsightSelectors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InsightSelectors => ArrayRef[L<Paws::CloudTrail::InsightSelector>]

A JSON string that contains the insight types you want to log on a
trail. In this release, only C<ApiCallRateInsight> is supported as an
insight type.



=head2 B<REQUIRED> TrailName => Str

The name of the CloudTrail trail for which you want to change or add
Insights selectors.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInsightSelectors in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

