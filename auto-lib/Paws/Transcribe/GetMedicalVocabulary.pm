
package Paws::Transcribe::GetMedicalVocabulary;
  use Moose;
  has VocabularyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMedicalVocabulary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::GetMedicalVocabularyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetMedicalVocabulary - Arguments for method GetMedicalVocabulary on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMedicalVocabulary on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method GetMedicalVocabulary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMedicalVocabulary.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $GetMedicalVocabularyResponse = $transcribe->GetMedicalVocabulary(
      VocabularyName => 'MyVocabularyName',

    );

    # Results:
    my $DownloadUri      = $GetMedicalVocabularyResponse->DownloadUri;
    my $FailureReason    = $GetMedicalVocabularyResponse->FailureReason;
    my $LanguageCode     = $GetMedicalVocabularyResponse->LanguageCode;
    my $LastModifiedTime = $GetMedicalVocabularyResponse->LastModifiedTime;
    my $VocabularyName   = $GetMedicalVocabularyResponse->VocabularyName;
    my $VocabularyState  = $GetMedicalVocabularyResponse->VocabularyState;

    # Returns a L<Paws::Transcribe::GetMedicalVocabularyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/GetMedicalVocabulary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VocabularyName => Str

The name of the vocabulary that you want information about. The value
is case sensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMedicalVocabulary in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

