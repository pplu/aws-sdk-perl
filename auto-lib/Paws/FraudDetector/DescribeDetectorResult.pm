
package Paws::FraudDetector::DescribeDetectorResult;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' );
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' );
  has DetectorVersionSummaries => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::DetectorVersionSummary]', traits => ['NameInRequest'], request_name => 'detectorVersionSummaries' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DescribeDetectorResult

=head1 ATTRIBUTES


=head2 Arn => Str

The detector ARN.


=head2 DetectorId => Str

The detector ID.


=head2 DetectorVersionSummaries => ArrayRef[L<Paws::FraudDetector::DetectorVersionSummary>]

The status and description for each detector version.


=head2 NextToken => Str

The next token to be used for subsequent requests.


=head2 _request_id => Str


=cut

1;