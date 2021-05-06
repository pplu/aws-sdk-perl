
package Paws::CloudTrail::PutInsightSelectorsResponse;
  use Moose;
  has InsightSelectors => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::InsightSelector]');
  has TrailARN => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::PutInsightSelectorsResponse

=head1 ATTRIBUTES


=head2 InsightSelectors => ArrayRef[L<Paws::CloudTrail::InsightSelector>]

A JSON string that contains the insight types you want to log on a
trail. In this release, only C<ApiCallRateInsight> is supported as an
insight type.


=head2 TrailARN => Str

The Amazon Resource Name (ARN) of a trail for which you want to change
or add Insights selectors.


=head2 _request_id => Str


=cut

1;