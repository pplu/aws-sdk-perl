
package Paws::Transcribe::GetMedicalTranscriptionJob;
  use Moose;
  has MedicalTranscriptionJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMedicalTranscriptionJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::GetMedicalTranscriptionJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetMedicalTranscriptionJob - Arguments for method GetMedicalTranscriptionJob on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMedicalTranscriptionJob on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method GetMedicalTranscriptionJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMedicalTranscriptionJob.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $GetMedicalTranscriptionJobResponse =
      $transcribe->GetMedicalTranscriptionJob(
      MedicalTranscriptionJobName => 'MyTranscriptionJobName',

      );

    # Results:
    my $MedicalTranscriptionJob =
      $GetMedicalTranscriptionJobResponse->MedicalTranscriptionJob;

    # Returns a L<Paws::Transcribe::GetMedicalTranscriptionJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/GetMedicalTranscriptionJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MedicalTranscriptionJobName => Str

The name of the medical transcription job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMedicalTranscriptionJob in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

