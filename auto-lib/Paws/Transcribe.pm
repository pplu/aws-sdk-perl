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
  sub StartTranscriptionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Transcribe::StartTranscriptionJob', @_);
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
  


  sub operations { qw/CreateVocabulary CreateVocabularyFilter DeleteTranscriptionJob DeleteVocabulary DeleteVocabularyFilter GetTranscriptionJob GetVocabulary GetVocabularyFilter ListTranscriptionJobs ListVocabularies ListVocabularyFilters StartTranscriptionJob UpdateVocabulary UpdateVocabularyFilter / }

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


=head2 GetTranscriptionJob

=over

=item TranscriptionJobName => Str


=back

Each argument is described in detail in: L<Paws::Transcribe::GetTranscriptionJob>

Returns: a L<Paws::Transcribe::GetTranscriptionJobResponse> instance

Returns information about a transcription job. To see the status of the
job, check the C<TranscriptionJobStatus> field. If the status is
C<COMPLETED>, the job is finished and you can find the results at the
location specified in the C<TranscriptionFileUri> field.


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


=head2 StartTranscriptionJob

=over

=item LanguageCode => Str

=item Media => L<Paws::Transcribe::Media>

=item TranscriptionJobName => Str

=item [JobExecutionSettings => L<Paws::Transcribe::JobExecutionSettings>]

=item [MediaFormat => Str]

=item [MediaSampleRateHertz => Int]

=item [OutputBucketName => Str]

=item [OutputEncryptionKMSKeyId => Str]

=item [Settings => L<Paws::Transcribe::Settings>]


=back

Each argument is described in detail in: L<Paws::Transcribe::StartTranscriptionJob>

Returns: a L<Paws::Transcribe::StartTranscriptionJobResponse> instance

Starts an asynchronous job to transcribe speech to text.


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

