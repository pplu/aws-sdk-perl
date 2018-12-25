package Paws::Polly;
  use Moose;
  sub service { 'polly' }
  sub signing_name { 'polly' }
  sub version { '2016-06-10' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub DeleteLexicon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::DeleteLexicon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVoices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::DescribeVoices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLexicon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::GetLexicon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetSpeechSynthesisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::GetSpeechSynthesisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLexicons {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::ListLexicons', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSpeechSynthesisTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::ListSpeechSynthesisTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutLexicon {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::PutLexicon', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSpeechSynthesisTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::StartSpeechSynthesisTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SynthesizeSpeech {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Polly::SynthesizeSpeech', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllVoices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVoices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVoices(@_, NextToken => $next_result->NextToken);
        push @{ $result->Voices }, @{ $next_result->Voices };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Voices') foreach (@{ $result->Voices });
        $result = $self->DescribeVoices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Voices') foreach (@{ $result->Voices });
    }

    return undef
  }
  sub ListAllLexicons {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListLexicons(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListLexicons(@_, NextToken => $next_result->NextToken);
        push @{ $result->Lexicons }, @{ $next_result->Lexicons };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Lexicons') foreach (@{ $result->Lexicons });
        $result = $self->ListLexicons(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Lexicons') foreach (@{ $result->Lexicons });
    }

    return undef
  }
  sub ListAllSpeechSynthesisTasks {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSpeechSynthesisTasks(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSpeechSynthesisTasks(@_, NextToken => $next_result->NextToken);
        push @{ $result->SynthesisTasks }, @{ $next_result->SynthesisTasks };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SynthesisTasks') foreach (@{ $result->SynthesisTasks });
        $result = $self->ListSpeechSynthesisTasks(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SynthesisTasks') foreach (@{ $result->SynthesisTasks });
    }

    return undef
  }


  sub operations { qw/DeleteLexicon DescribeVoices GetLexicon GetSpeechSynthesisTask ListLexicons ListSpeechSynthesisTasks PutLexicon StartSpeechSynthesisTask SynthesizeSpeech / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly - Perl Interface to AWS Amazon Polly

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Polly');
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

Amazon Polly is a web service that makes it easy to synthesize speech
from text.

The Amazon Polly service provides API operations for synthesizing
high-quality speech from plain text and Speech Synthesis Markup
Language (SSML), along with managing pronunciations lexicons that
enable you to get the best results for your application domain.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/polly-2016-06-10>


=head1 METHODS

=head2 DeleteLexicon

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Polly::DeleteLexicon>

Returns: a L<Paws::Polly::DeleteLexiconOutput> instance

Deletes the specified pronunciation lexicon stored in an AWS Region. A
lexicon which has been deleted is not available for speech synthesis,
nor is it possible to retrieve it using either the C<GetLexicon> or
C<ListLexicon> APIs.

For more information, see Managing Lexicons
(http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).


=head2 DescribeVoices

=over

=item [IncludeAdditionalLanguageCodes => Bool]

=item [LanguageCode => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Polly::DescribeVoices>

Returns: a L<Paws::Polly::DescribeVoicesOutput> instance

Returns the list of voices that are available for use when requesting
speech synthesis. Each voice speaks a specified language, is either
male or female, and is identified by an ID, which is the ASCII version
of the voice name.

When synthesizing speech ( C<SynthesizeSpeech> ), you provide the voice
ID for the voice you want from the list of voices returned by
C<DescribeVoices>.

For example, you want your news reader application to read news in a
specific language, but giving a user the option to choose the voice.
Using the C<DescribeVoices> operation you can provide the user with a
list of available voices to select from.

You can optionally specify a language code to filter the available
voices. For example, if you specify C<en-US>, the operation returns a
list of all available US English voices.

This operation requires permissions to perform the
C<polly:DescribeVoices> action.


=head2 GetLexicon

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Polly::GetLexicon>

Returns: a L<Paws::Polly::GetLexiconOutput> instance

Returns the content of the specified pronunciation lexicon stored in an
AWS Region. For more information, see Managing Lexicons
(http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).


=head2 GetSpeechSynthesisTask

=over

=item TaskId => Str


=back

Each argument is described in detail in: L<Paws::Polly::GetSpeechSynthesisTask>

Returns: a L<Paws::Polly::GetSpeechSynthesisTaskOutput> instance

Retrieves a specific SpeechSynthesisTask object based on its TaskID.
This object contains information about the given speech synthesis task,
including the status of the task, and a link to the S3 bucket
containing the output of the task.


=head2 ListLexicons

=over

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Polly::ListLexicons>

Returns: a L<Paws::Polly::ListLexiconsOutput> instance

Returns a list of pronunciation lexicons stored in an AWS Region. For
more information, see Managing Lexicons
(http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).


=head2 ListSpeechSynthesisTasks

=over

=item [MaxResults => Int]

=item [NextToken => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Polly::ListSpeechSynthesisTasks>

Returns: a L<Paws::Polly::ListSpeechSynthesisTasksOutput> instance

Returns a list of SpeechSynthesisTask objects ordered by their creation
date. This operation can filter the tasks by their status, for example,
allowing users to list only tasks that are completed.


=head2 PutLexicon

=over

=item Content => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Polly::PutLexicon>

Returns: a L<Paws::Polly::PutLexiconOutput> instance

Stores a pronunciation lexicon in an AWS Region. If a lexicon with the
same name already exists in the region, it is overwritten by the new
lexicon. Lexicon operations have eventual consistency, therefore, it
might take some time before the lexicon is available to the
SynthesizeSpeech operation.

For more information, see Managing Lexicons
(http://docs.aws.amazon.com/polly/latest/dg/managing-lexicons.html).


=head2 StartSpeechSynthesisTask

=over

=item OutputFormat => Str

=item OutputS3BucketName => Str

=item Text => Str

=item VoiceId => Str

=item [LanguageCode => Str]

=item [LexiconNames => ArrayRef[Str|Undef]]

=item [OutputS3KeyPrefix => Str]

=item [SampleRate => Str]

=item [SnsTopicArn => Str]

=item [SpeechMarkTypes => ArrayRef[Str|Undef]]

=item [TextType => Str]


=back

Each argument is described in detail in: L<Paws::Polly::StartSpeechSynthesisTask>

Returns: a L<Paws::Polly::StartSpeechSynthesisTaskOutput> instance

Allows the creation of an asynchronous synthesis task, by starting a
new C<SpeechSynthesisTask>. This operation requires all the standard
information needed for speech synthesis, plus the name of an Amazon S3
bucket for the service to store the output of the synthesis task and
two optional parameters (OutputS3KeyPrefix and SnsTopicArn). Once the
synthesis task is created, this operation will return a
SpeechSynthesisTask object, which will include an identifier of this
task as well as the current status.


=head2 SynthesizeSpeech

=over

=item OutputFormat => Str

=item Text => Str

=item VoiceId => Str

=item [LanguageCode => Str]

=item [LexiconNames => ArrayRef[Str|Undef]]

=item [SampleRate => Str]

=item [SpeechMarkTypes => ArrayRef[Str|Undef]]

=item [TextType => Str]


=back

Each argument is described in detail in: L<Paws::Polly::SynthesizeSpeech>

Returns: a L<Paws::Polly::SynthesizeSpeechOutput> instance

Synthesizes UTF-8 input, plain text or SSML, to a stream of bytes. SSML
input must be valid, well-formed SSML. Some alphabets might not be
available with all the voices (for example, Cyrillic might not be read
at all by English voices) unless phoneme mapping is used. For more
information, see How it Works
(http://docs.aws.amazon.com/polly/latest/dg/how-text-to-speech-works.html).




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllVoices(sub { },[IncludeAdditionalLanguageCodes => Bool, LanguageCode => Str, NextToken => Str])

=head2 DescribeAllVoices([IncludeAdditionalLanguageCodes => Bool, LanguageCode => Str, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Voices, passing the object as the first parameter, and the string 'Voices' as the second parameter 

If not, it will return a a L<Paws::Polly::DescribeVoicesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllLexicons(sub { },[NextToken => Str])

=head2 ListAllLexicons([NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Lexicons, passing the object as the first parameter, and the string 'Lexicons' as the second parameter 

If not, it will return a a L<Paws::Polly::ListLexiconsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSpeechSynthesisTasks(sub { },[MaxResults => Int, NextToken => Str, Status => Str])

=head2 ListAllSpeechSynthesisTasks([MaxResults => Int, NextToken => Str, Status => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SynthesisTasks, passing the object as the first parameter, and the string 'SynthesisTasks' as the second parameter 

If not, it will return a a L<Paws::Polly::ListSpeechSynthesisTasksOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

