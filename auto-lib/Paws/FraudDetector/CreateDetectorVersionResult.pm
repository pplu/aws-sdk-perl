
package Paws::FraudDetector::CreateDetectorVersionResult;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorId' );
  has DetectorVersionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detectorVersionId' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::CreateDetectorVersionResult

=head1 ATTRIBUTES


=head2 DetectorId => Str

The ID for the created version's parent detector.


=head2 DetectorVersionId => Str

The ID for the created detector.


=head2 Status => Str

The status of the detector version.

Valid values are: C<"DRAFT">, C<"ACTIVE">, C<"INACTIVE">
=head2 _request_id => Str


=cut

1;