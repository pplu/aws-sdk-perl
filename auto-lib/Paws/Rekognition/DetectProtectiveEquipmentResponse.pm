
package Paws::Rekognition::DetectProtectiveEquipmentResponse;
  use Moose;
  has Persons => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ProtectiveEquipmentPerson]');
  has ProtectiveEquipmentModelVersion => (is => 'ro', isa => 'Str');
  has Summary => (is => 'ro', isa => 'Paws::Rekognition::ProtectiveEquipmentSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectProtectiveEquipmentResponse

=head1 ATTRIBUTES


=head2 Persons => ArrayRef[L<Paws::Rekognition::ProtectiveEquipmentPerson>]

An array of persons detected in the image (including persons not
wearing PPE).


=head2 ProtectiveEquipmentModelVersion => Str

The version number of the PPE detection model used to detect PPE in the
image.


=head2 Summary => L<Paws::Rekognition::ProtectiveEquipmentSummary>

Summary information for the types of PPE specified in the
C<SummarizationAttributes> input parameter.


=head2 _request_id => Str


=cut

1;