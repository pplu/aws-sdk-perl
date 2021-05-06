
package Paws::Transcribe::GetVocabularyFilter;
  use Moose;
  has VocabularyFilterName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVocabularyFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transcribe::GetVocabularyFilterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe::GetVocabularyFilter - Arguments for method GetVocabularyFilter on L<Paws::Transcribe>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVocabularyFilter on the
L<Amazon Transcribe Service|Paws::Transcribe> service. Use the attributes of this class
as arguments to method GetVocabularyFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVocabularyFilter.

=head1 SYNOPSIS

    my $transcribe = Paws->service('Transcribe');
    my $GetVocabularyFilterResponse = $transcribe->GetVocabularyFilter(
      VocabularyFilterName => 'MyVocabularyFilterName',

    );

    # Results:
    my $DownloadUri      = $GetVocabularyFilterResponse->DownloadUri;
    my $LanguageCode     = $GetVocabularyFilterResponse->LanguageCode;
    my $LastModifiedTime = $GetVocabularyFilterResponse->LastModifiedTime;
    my $VocabularyFilterName =
      $GetVocabularyFilterResponse->VocabularyFilterName;

    # Returns a L<Paws::Transcribe::GetVocabularyFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe/GetVocabularyFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> VocabularyFilterName => Str

The name of the vocabulary filter for which to return information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVocabularyFilter in L<Paws::Transcribe>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

