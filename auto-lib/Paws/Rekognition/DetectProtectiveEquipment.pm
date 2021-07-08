
package Paws::Rekognition::DetectProtectiveEquipment;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has SummarizationAttributes => (is => 'ro', isa => 'Paws::Rekognition::ProtectiveEquipmentSummarizationAttributes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectProtectiveEquipment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DetectProtectiveEquipmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectProtectiveEquipment - Arguments for method DetectProtectiveEquipment on L<Paws::Rekognition>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectProtectiveEquipment on the
L<Amazon Rekognition|Paws::Rekognition> service. Use the attributes of this class
as arguments to method DetectProtectiveEquipment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectProtectiveEquipment.

=head1 SYNOPSIS

    my $rekognition = Paws->service('Rekognition');
    my $DetectProtectiveEquipmentResponse =
      $rekognition->DetectProtectiveEquipment(
      Image => {
        Bytes    => 'BlobImageBlob',    # min: 1, max: 5242880; OPTIONAL
        S3Object => {
          Bucket  => 'MyS3Bucket',           # min: 3, max: 255; OPTIONAL
          Name    => 'MyS3ObjectName',       # min: 1, max: 1024; OPTIONAL
          Version => 'MyS3ObjectVersion',    # min: 1, max: 1024; OPTIONAL
        },    # OPTIONAL
      },
      SummarizationAttributes => {
        MinConfidence          => 1.0,    # max: 100
        RequiredEquipmentTypes => [
          'FACE_COVER', ...    # values: FACE_COVER, HAND_COVER, HEAD_COVER
        ],

      },    # OPTIONAL
      );

    # Results:
    my $Persons = $DetectProtectiveEquipmentResponse->Persons;
    my $ProtectiveEquipmentModelVersion =
      $DetectProtectiveEquipmentResponse->ProtectiveEquipmentModelVersion;
    my $Summary = $DetectProtectiveEquipmentResponse->Summary;

    # Returns a L<Paws::Rekognition::DetectProtectiveEquipmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rekognition/DetectProtectiveEquipment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The image in which you want to detect PPE on detected persons. The
image can be passed as image bytes or you can reference an image stored
in an Amazon S3 bucket.



=head2 SummarizationAttributes => L<Paws::Rekognition::ProtectiveEquipmentSummarizationAttributes>

An array of PPE types that you want to summarize.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectProtectiveEquipment in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

