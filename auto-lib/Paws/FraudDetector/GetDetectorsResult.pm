
package Paws::FraudDetector::GetDetectorsResult;
  use Moose;
  has Detectors => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Detector]', traits => ['NameInRequest'], request_name => 'detectors' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetDetectorsResult

=head1 ATTRIBUTES


=head2 Detectors => ArrayRef[L<Paws::FraudDetector::Detector>]

The detectors.


=head2 NextToken => Str

The next page token.


=head2 _request_id => Str


=cut

1;