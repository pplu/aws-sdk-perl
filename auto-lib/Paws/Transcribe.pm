package Paws::Transcribe;
  use Moose;
  sub service { 'transcribe' }
  sub signing_name { 'transcribe' }
  sub version { '2017-10-26' }
  sub target_prefix { 'Transcribe' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateLanguageModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateLanguageModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::CreateVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLanguageModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteLanguageModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMedicalTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteMedicalTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DeleteVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeLanguageModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::DescribeLanguageModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMedicalTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetMedicalTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::GetVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLanguageModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListLanguageModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMedicalTranscriptionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListMedicalTranscriptionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListMedicalVocabularies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListMedicalVocabularies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTranscriptionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListTranscriptionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVocabularies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListVocabularies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVocabularyFilters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::ListVocabularyFilters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMedicalTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartMedicalTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartTranscriptionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMedicalVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UpdateMedicalVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVocabulary {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UpdateVocabulary', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateVocabularyFilter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::UpdateVocabularyFilter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/CreateLanguageModel CreateMedicalVocabulary CreateVocabulary CreateVocabularyFilter DeleteLanguageModel DeleteMedicalTranscriptionJob DeleteMedicalVocabulary DeleteTranscriptionJob DeleteVocabulary DeleteVocabularyFilter DescribeLanguageModel GetMedicalTranscriptionJob GetMedicalVocabulary GetTranscriptionJob GetVocabulary GetVocabularyFilter ListLanguageModels ListMedicalTranscriptionJobs ListMedicalVocabularies ListTranscriptionJobs ListVocabularies ListVocabularyFilters StartMedicalTranscriptionJob StartTranscriptionJob UpdateMedicalVocabulary UpdateVocabulary UpdateVocabularyFilter / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Transcribe - Perl Interface to AWS Amazon Transcribe Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Transcribe');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Operations and objects for transcribing speech to text.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transcribe-2017-10-26>


=head1 METHODS

=head2 CreateLanguageModel

=over

=item BaseModelName => Str

=item InputDataConfig => L<Paws::Transcribe::InputDataConfig>

=item LanguageCode => Str

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateLanguageModel>

Returns: a L<Paws::Transcribe::CreateLanguageModelResponse> instance

Creates a new custom language model. Use Amazon S3 prefixes to provide
the location of your input files. The time it takes to create your
model depends on the size of your training data.


=head2 CreateMedicalVocabulary

=over

=item LanguageCode => Str

=item VocabularyFileUri => Str

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateMedicalVocabulary>

Returns: a L<Paws::Transcribe::CreateMedicalVocabularyResponse> instance

Creates a new custom vocabulary that you can use to change how Amazon
Transcribe Medical transcribes your audio file.


=head2 CreateVocabulary

=over

=item LanguageCode => Str

=item VocabularyName => Str

=item [Phrases => ArrayRef[Str|Undef]]

=item [VocabularyFileUri => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateVocabulary>

Returns: a L<Paws::Transcribe::CreateVocabularyResponse> instance

Creates a new custom vocabulary that you can use to change the way
Amazon Transcribe handles transcription of an audio file.


=head2 CreateVocabularyFilter

=over

=item LanguageCode => Str

=item VocabularyFilterName => Str

=item [VocabularyFilterFileUri => Str]

=item [Words => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Transcribe::CreateVocabularyFilter>

Returns: a L<Paws::Transcribe::CreateVocabularyFilterResponse> instance

Creates a new vocabulary filter that you can use to filter words, such
as profane words, from the output of a transcription job.


=head2 DeleteLanguageModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteLanguageModel>

Returns: nothing

Deletes a custom language model using its name.


=head2 DeleteMedicalTranscriptionJob

=over

=item MedicalTranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteMedicalTranscriptionJob>

Returns: nothing

Deletes a transcription job generated by Amazon Transcribe Medical and
any related information.


=head2 DeleteMedicalVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteMedicalVocabulary>

Returns: nothing

Deletes a vocabulary from Amazon Transcribe Medical.


=head2 DeleteTranscriptionJob

=over

=item TranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteTranscriptionJob>

Returns: nothing

Deletes a previously submitted transcription job along with any other
generated results such as the transcription, models, and so on.


=head2 DeleteVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteVocabulary>

Returns: nothing

Deletes a vocabulary from Amazon Transcribe.


=head2 DeleteVocabularyFilter

=over

=item VocabularyFilterName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DeleteVocabularyFilter>

Returns: nothing

Removes a vocabulary filter.


=head2 DescribeLanguageModel

=over

=item ModelName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::DescribeLanguageModel>

Returns: a L<Paws::Transcribe::DescribeLanguageModelResponse> instance

Gets information about a single custom language model. Use this
information to see details about the language model in your AWS
account. You can also see whether the base language model used to
create your custom language model has been updated. If Amazon
Transcribe has updated the base model, you can create a new custom
language model using the updated base model. If the language model
wasn't created, you can use this operation to understand why Amazon
Transcribe couldn't create it.


=head2 GetMedicalTranscriptionJob

=over

=item MedicalTranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetMedicalTranscriptionJob>

Returns: a L<Paws::Transcribe::GetMedicalTranscriptionJobResponse> instance

Returns information about a transcription job from Amazon Transcribe
Medical. To see the status of the job, check the
C<TranscriptionJobStatus> field. If the status is C<COMPLETED>, the job
is finished. You find the results of the completed job in the
C<TranscriptFileUri> field.


=head2 GetMedicalVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetMedicalVocabulary>

Returns: a L<Paws::Transcribe::GetMedicalVocabularyResponse> instance

Retrieves information about a medical vocabulary.


=head2 GetTranscriptionJob

=over

=item TranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetTranscriptionJob>

Returns: a L<Paws::Transcribe::GetTranscriptionJobResponse> instance

Returns information about a transcription job. To see the status of the
job, check the C<TranscriptionJobStatus> field. If the status is
C<COMPLETED>, the job is finished and you can find the results at the
location specified in the C<TranscriptFileUri> field. If you enable
content redaction, the redacted transcript appears in
C<RedactedTranscriptFileUri>.


=head2 GetVocabulary

=over

=item VocabularyName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetVocabulary>

Returns: a L<Paws::Transcribe::GetVocabularyResponse> instance

Gets information about a vocabulary.


=head2 GetVocabularyFilter

=over

=item VocabularyFilterName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetVocabularyFilter>

Returns: a L<Paws::Transcribe::GetVocabularyFilterResponse> instance

Returns information about a vocabulary filter.


=head2 ListLanguageModels

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [StatusEquals => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListLanguageModels>

Returns: a L<Paws::Transcribe::ListLanguageModelsResponse> instance

Provides more information about the custom language models you've
created. You can use the information in this list to find a specific
custom language model. You can then use the operation to get more
information about it.


=head2 ListMedicalTranscriptionJobs

=over

=item [JobNameContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListMedicalTranscriptionJobs>

Returns: a L<Paws::Transcribe::ListMedicalTranscriptionJobsResponse> instance

Lists medical transcription jobs with a specified status or substring
that matches their names.


=head2 ListMedicalVocabularies

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [StateEquals => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListMedicalVocabularies>

Returns: a L<Paws::Transcribe::ListMedicalVocabulariesResponse> instance

Returns a list of vocabularies that match the specified criteria. If
you don't enter a value in any of the request parameters, returns the
entire list of vocabularies.


=head2 ListTranscriptionJobs

=over

=item [JobNameContains => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListTranscriptionJobs>

Returns: a L<Paws::Transcribe::ListTranscriptionJobsResponse> instance

Lists transcription jobs with the specified status.


=head2 ListVocabularies

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]

=item [StateEquals => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListVocabularies>

Returns: a L<Paws::Transcribe::ListVocabulariesResponse> instance

Returns a list of vocabularies that match the specified criteria. If no
criteria are specified, returns the entire list of vocabularies.


=head2 ListVocabularyFilters

=over

=item [MaxResults => Int]

=item [NameContains => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::ListVocabularyFilters>

Returns: a L<Paws::Transcribe::ListVocabularyFiltersResponse> instance

Gets information about vocabulary filters.


=head2 StartMedicalTranscriptionJob

=over

=item LanguageCode => Str

=item Media => L<Paws::Transcribe::Media>

=item MedicalTranscriptionJobName => Str

=item OutputBucketName => Str

=item Specialty => Str

=item Type => Str

=item [ContentIdentificationType => Str]

=item [MediaFormat => Str]

=item [MediaSampleRateHertz => Int]

=item [OutputEncryptionKMSKeyId => Str]

=item [OutputKey => Str]

=item [Settings => L<Paws::Transcribe::MedicalTranscriptionSetting>]


=back

Each argument is described in detail in: L<Paws::Transcribe::StartMedicalTranscriptionJob>

Returns: a L<Paws::Transcribe::StartMedicalTranscriptionJobResponse> instance

Starts a batch job to transcribe medical speech to text.


=head2 StartTranscriptionJob

=over

=item Media => L<Paws::Transcribe::Media>

=item TranscriptionJobName => Str

=item [ContentRedaction => L<Paws::Transcribe::ContentRedaction>]

=item [IdentifyLanguage => Bool]

=item [JobExecutionSettings => L<Paws::Transcribe::JobExecutionSettings>]

=item [LanguageCode => Str]

=item [LanguageOptions => ArrayRef[Str|Undef]]

=item [MediaFormat => Str]

=item [MediaSampleRateHertz => Int]

=item [ModelSettings => L<Paws::Transcribe::ModelSettings>]

=item [OutputBucketName => Str]

=item [OutputEncryptionKMSKeyId => Str]

=item [OutputKey => Str]

=item [Settings => L<Paws::Transcribe::Settings>]


=back

Each argument is described in detail in: L<Paws::Transcribe::StartTranscriptionJob>

Returns: a L<Paws::Transcribe::StartTranscriptionJobResponse> instance

Starts an asynchronous job to transcribe speech to text.


=head2 UpdateMedicalVocabulary

=over

=item LanguageCode => Str

=item VocabularyName => Str

=item [VocabularyFileUri => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::UpdateMedicalVocabulary>

Returns: a L<Paws::Transcribe::UpdateMedicalVocabularyResponse> instance

Updates a vocabulary with new values that you provide in a different
text file from the one you used to create the vocabulary. The
C<UpdateMedicalVocabulary> operation overwrites all of the existing
information with the values that you provide in the request.


=head2 UpdateVocabulary

=over

=item LanguageCode => Str

=item VocabularyName => Str

=item [Phrases => ArrayRef[Str|Undef]]

=item [VocabularyFileUri => Str]


=back

Each argument is described in detail in: L<Paws::Transcribe::UpdateVocabulary>

Returns: a L<Paws::Transcribe::UpdateVocabularyResponse> instance

Updates an existing vocabulary with new values. The C<UpdateVocabulary>
operation overwrites all of the existing information with the values
that you provide in the request.


=head2 UpdateVocabularyFilter

=over

=item VocabularyFilterName => Str

=item [VocabularyFilterFileUri => Str]

=item [Words => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Transcribe::UpdateVocabularyFilter>

Returns: a L<Paws::Transcribe::UpdateVocabularyFilterResponse> instance

Updates a vocabulary filter with a new list of filtered words.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

