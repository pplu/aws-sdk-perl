package Paws::Comprehend;
  use Moose;
  sub service { 'comprehend' }
  sub signing_name { 'comprehend' }
  sub version { '2017-11-27' }
  sub target_prefix { 'Comprehend_20171127' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchDetectDominantLanguage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectDominantLanguage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectKeyPhrases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectKeyPhrases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDetectSyntax {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::BatchDetectSyntax', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::CreateDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::CreateEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DeleteDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DeleteEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocumentClassificationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeDocumentClassificationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDominantLanguageDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeDominantLanguageDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeyPhrasesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeKeyPhrasesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTopicsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DescribeTopicsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectDominantLanguage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectDominantLanguage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectEntities {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectEntities', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectKeyPhrases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectKeyPhrases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectSentiment {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectSentiment', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetectSyntax {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::DetectSyntax', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocumentClassificationJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDocumentClassificationJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocumentClassifiers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDocumentClassifiers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDominantLanguageDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListDominantLanguageDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntitiesDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListEntitiesDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEntityRecognizers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListEntityRecognizers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListKeyPhrasesDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListKeyPhrasesDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSentimentDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListSentimentDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTopicsDetectionJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::ListTopicsDetectionJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDocumentClassificationJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartDocumentClassificationJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDominantLanguageDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartDominantLanguageDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartKeyPhrasesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartKeyPhrasesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartTopicsDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StartTopicsDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDominantLanguageDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopDominantLanguageDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopEntitiesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopEntitiesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopKeyPhrasesDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopKeyPhrasesDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopSentimentDetectionJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopSentimentDetectionJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrainingDocumentClassifier {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopTrainingDocumentClassifier', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopTrainingEntityRecognizer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Comprehend::StopTrainingEntityRecognizer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDocumentClassificationJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDocumentClassificationJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDocumentClassificationJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DocumentClassificationJobPropertiesList }, @{ $next_result->DocumentClassificationJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DocumentClassificationJobPropertiesList') foreach (@{ $result->DocumentClassificationJobPropertiesList });
        $result = $self->ListDocumentClassificationJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DocumentClassificationJobPropertiesList') foreach (@{ $result->DocumentClassificationJobPropertiesList });
    }

    return undef
  }
  sub ListAllDocumentClassifiers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDocumentClassifiers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDocumentClassifiers(@_, NextToken => $next_result->NextToken);
        push @{ $result->DocumentClassifierPropertiesList }, @{ $next_result->DocumentClassifierPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DocumentClassifierPropertiesList') foreach (@{ $result->DocumentClassifierPropertiesList });
        $result = $self->ListDocumentClassifiers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DocumentClassifierPropertiesList') foreach (@{ $result->DocumentClassifierPropertiesList });
    }

    return undef
  }
  sub ListAllDominantLanguageDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDominantLanguageDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDominantLanguageDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DominantLanguageDetectionJobPropertiesList }, @{ $next_result->DominantLanguageDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DominantLanguageDetectionJobPropertiesList') foreach (@{ $result->DominantLanguageDetectionJobPropertiesList });
        $result = $self->ListDominantLanguageDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DominantLanguageDetectionJobPropertiesList') foreach (@{ $result->DominantLanguageDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllEntitiesDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntitiesDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntitiesDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->EntitiesDetectionJobPropertiesList }, @{ $next_result->EntitiesDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EntitiesDetectionJobPropertiesList') foreach (@{ $result->EntitiesDetectionJobPropertiesList });
        $result = $self->ListEntitiesDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EntitiesDetectionJobPropertiesList') foreach (@{ $result->EntitiesDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllEntityRecognizers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEntityRecognizers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListEntityRecognizers(@_, NextToken => $next_result->NextToken);
        push @{ $result->EntityRecognizerPropertiesList }, @{ $next_result->EntityRecognizerPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'EntityRecognizerPropertiesList') foreach (@{ $result->EntityRecognizerPropertiesList });
        $result = $self->ListEntityRecognizers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'EntityRecognizerPropertiesList') foreach (@{ $result->EntityRecognizerPropertiesList });
    }

    return undef
  }
  sub ListAllKeyPhrasesDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListKeyPhrasesDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListKeyPhrasesDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->KeyPhrasesDetectionJobPropertiesList }, @{ $next_result->KeyPhrasesDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'KeyPhrasesDetectionJobPropertiesList') foreach (@{ $result->KeyPhrasesDetectionJobPropertiesList });
        $result = $self->ListKeyPhrasesDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'KeyPhrasesDetectionJobPropertiesList') foreach (@{ $result->KeyPhrasesDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllSentimentDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListSentimentDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListSentimentDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->SentimentDetectionJobPropertiesList }, @{ $next_result->SentimentDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SentimentDetectionJobPropertiesList') foreach (@{ $result->SentimentDetectionJobPropertiesList });
        $result = $self->ListSentimentDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SentimentDetectionJobPropertiesList') foreach (@{ $result->SentimentDetectionJobPropertiesList });
    }

    return undef
  }
  sub ListAllTopicsDetectionJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListTopicsDetectionJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListTopicsDetectionJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->TopicsDetectionJobPropertiesList }, @{ $next_result->TopicsDetectionJobPropertiesList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'TopicsDetectionJobPropertiesList') foreach (@{ $result->TopicsDetectionJobPropertiesList });
        $result = $self->ListTopicsDetectionJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'TopicsDetectionJobPropertiesList') foreach (@{ $result->TopicsDetectionJobPropertiesList });
    }

    return undef
  }


  sub operations { qw/BatchDetectDominantLanguage BatchDetectEntities BatchDetectKeyPhrases BatchDetectSentiment BatchDetectSyntax CreateDocumentClassifier CreateEntityRecognizer DeleteDocumentClassifier DeleteEntityRecognizer DescribeDocumentClassificationJob DescribeDocumentClassifier DescribeDominantLanguageDetectionJob DescribeEntitiesDetectionJob DescribeEntityRecognizer DescribeKeyPhrasesDetectionJob DescribeSentimentDetectionJob DescribeTopicsDetectionJob DetectDominantLanguage DetectEntities DetectKeyPhrases DetectSentiment DetectSyntax ListDocumentClassificationJobs ListDocumentClassifiers ListDominantLanguageDetectionJobs ListEntitiesDetectionJobs ListEntityRecognizers ListKeyPhrasesDetectionJobs ListSentimentDetectionJobs ListTopicsDetectionJobs StartDocumentClassificationJob StartDominantLanguageDetectionJob StartEntitiesDetectionJob StartKeyPhrasesDetectionJob StartSentimentDetectionJob StartTopicsDetectionJob StopDominantLanguageDetectionJob StopEntitiesDetectionJob StopKeyPhrasesDetectionJob StopSentimentDetectionJob StopTrainingDocumentClassifier StopTrainingEntityRecognizer / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend - Perl Interface to AWS Amazon Comprehend

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Comprehend');
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

Amazon Comprehend is an AWS service for gaining insight into the
content of documents. Use these actions to determine the topics
contained in your documents, the topics they discuss, the predominant
sentiment expressed in them, the predominant language used, and more.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehend-2017-11-27>


=head1 METHODS

=head2 BatchDetectDominantLanguage

=over

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectDominantLanguage>

Returns: a L<Paws::Comprehend::BatchDetectDominantLanguageResponse> instance

Determines the dominant language of the input text for a batch of
documents. For a list of languages that Amazon Comprehend can detect,
see Amazon Comprehend Supported Languages
(http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).


=head2 BatchDetectEntities

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectEntities>

Returns: a L<Paws::Comprehend::BatchDetectEntitiesResponse> instance

Inspects the text of a batch of documents for named entities and
returns information about them. For more information about named
entities, see how-entities


=head2 BatchDetectKeyPhrases

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectKeyPhrases>

Returns: a L<Paws::Comprehend::BatchDetectKeyPhrasesResponse> instance

Detects the key noun phrases found in a batch of documents.


=head2 BatchDetectSentiment

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectSentiment>

Returns: a L<Paws::Comprehend::BatchDetectSentimentResponse> instance

Inspects a batch of documents and returns an inference of the
prevailing sentiment, C<POSITIVE>, C<NEUTRAL>, C<MIXED>, or
C<NEGATIVE>, in each one.


=head2 BatchDetectSyntax

=over

=item LanguageCode => Str

=item TextList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Comprehend::BatchDetectSyntax>

Returns: a L<Paws::Comprehend::BatchDetectSyntaxResponse> instance

Inspects the text of a batch of documents for the syntax and part of
speech of the words in the document and returns information about them.
For more information, see how-syntax.


=head2 CreateDocumentClassifier

=over

=item DataAccessRoleArn => Str

=item DocumentClassifierName => Str

=item InputDataConfig => L<Paws::Comprehend::DocumentClassifierInputDataConfig>

=item LanguageCode => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::CreateDocumentClassifier>

Returns: a L<Paws::Comprehend::CreateDocumentClassifierResponse> instance

Creates a new document classifier that you can use to categorize
documents. To create a classifier you provide a set of training
documents that labeled with the categories that you want to use. After
the classifier is trained you can use it to categorize a set of labeled
documents into the categories. For more information, see
how-document-classification.


=head2 CreateEntityRecognizer

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::EntityRecognizerInputDataConfig>

=item LanguageCode => Str

=item RecognizerName => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::CreateEntityRecognizer>

Returns: a L<Paws::Comprehend::CreateEntityRecognizerResponse> instance

Creates an entity recognizer using submitted files. After your
C<CreateEntityRecognizer> request is submitted, you can check job
status using the API.


=head2 DeleteDocumentClassifier

=over

=item DocumentClassifierArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DeleteDocumentClassifier>

Returns: a L<Paws::Comprehend::DeleteDocumentClassifierResponse> instance

Deletes a previously created document classifier

Only those classifiers that are in terminated states (IN_ERROR,
TRAINED) will be deleted. If an active inference job is using the
model, a C<ResourceInUseException> will be returned.

This is an asynchronous action that puts the classifier into a DELETING
state, and it is then removed by a background job. Once removed, the
classifier disappears from your account and is no longer available for
use.


=head2 DeleteEntityRecognizer

=over

=item EntityRecognizerArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DeleteEntityRecognizer>

Returns: a L<Paws::Comprehend::DeleteEntityRecognizerResponse> instance

Deletes an entity recognizer.

Only those recognizers that are in terminated states (IN_ERROR,
TRAINED) will be deleted. If an active inference job is using the
model, a C<ResourceInUseException> will be returned.

This is an asynchronous action that puts the recognizer into a DELETING
state, and it is then removed by a background job. Once removed, the
recognizer disappears from your account and is no longer available for
use.


=head2 DescribeDocumentClassificationJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeDocumentClassificationJob>

Returns: a L<Paws::Comprehend::DescribeDocumentClassificationJobResponse> instance

Gets the properties associated with a document classification job. Use
this operation to get the status of a classification job.


=head2 DescribeDocumentClassifier

=over

=item DocumentClassifierArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeDocumentClassifier>

Returns: a L<Paws::Comprehend::DescribeDocumentClassifierResponse> instance

Gets the properties associated with a document classifier.


=head2 DescribeDominantLanguageDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeDominantLanguageDetectionJob>

Returns: a L<Paws::Comprehend::DescribeDominantLanguageDetectionJobResponse> instance

Gets the properties associated with a dominant language detection job.
Use this operation to get the status of a detection job.


=head2 DescribeEntitiesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::DescribeEntitiesDetectionJobResponse> instance

Gets the properties associated with an entities detection job. Use this
operation to get the status of a detection job.


=head2 DescribeEntityRecognizer

=over

=item EntityRecognizerArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeEntityRecognizer>

Returns: a L<Paws::Comprehend::DescribeEntityRecognizerResponse> instance

Provides details about an entity recognizer including status, S3
buckets containing training data, recognizer metadata, metrics, and so
on.


=head2 DescribeKeyPhrasesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeKeyPhrasesDetectionJob>

Returns: a L<Paws::Comprehend::DescribeKeyPhrasesDetectionJobResponse> instance

Gets the properties associated with a key phrases detection job. Use
this operation to get the status of a detection job.


=head2 DescribeSentimentDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeSentimentDetectionJob>

Returns: a L<Paws::Comprehend::DescribeSentimentDetectionJobResponse> instance

Gets the properties associated with a sentiment detection job. Use this
operation to get the status of a detection job.


=head2 DescribeTopicsDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DescribeTopicsDetectionJob>

Returns: a L<Paws::Comprehend::DescribeTopicsDetectionJobResponse> instance

Gets the properties associated with a topic detection job. Use this
operation to get the status of a detection job.


=head2 DetectDominantLanguage

=over

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectDominantLanguage>

Returns: a L<Paws::Comprehend::DetectDominantLanguageResponse> instance

Determines the dominant language of the input text. For a list of
languages that Amazon Comprehend can detect, see Amazon Comprehend
Supported Languages
(http://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).


=head2 DetectEntities

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectEntities>

Returns: a L<Paws::Comprehend::DetectEntitiesResponse> instance

Inspects text for named entities, and returns information about them.
For more information, about named entities, see how-entities.


=head2 DetectKeyPhrases

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectKeyPhrases>

Returns: a L<Paws::Comprehend::DetectKeyPhrasesResponse> instance

Detects the key noun phrases found in the text.


=head2 DetectSentiment

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectSentiment>

Returns: a L<Paws::Comprehend::DetectSentimentResponse> instance

Inspects text and returns an inference of the prevailing sentiment
(C<POSITIVE>, C<NEUTRAL>, C<MIXED>, or C<NEGATIVE>).


=head2 DetectSyntax

=over

=item LanguageCode => Str

=item Text => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::DetectSyntax>

Returns: a L<Paws::Comprehend::DetectSyntaxResponse> instance

Inspects text for syntax and the part of speech of words in the
document. For more information, how-syntax.


=head2 ListDocumentClassificationJobs

=over

=item [Filter => L<Paws::Comprehend::DocumentClassificationJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDocumentClassificationJobs>

Returns: a L<Paws::Comprehend::ListDocumentClassificationJobsResponse> instance

Gets a list of the documentation classification jobs that you have
submitted.


=head2 ListDocumentClassifiers

=over

=item [Filter => L<Paws::Comprehend::DocumentClassifierFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDocumentClassifiers>

Returns: a L<Paws::Comprehend::ListDocumentClassifiersResponse> instance

Gets a list of the document classifiers that you have created.


=head2 ListDominantLanguageDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::DominantLanguageDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListDominantLanguageDetectionJobs>

Returns: a L<Paws::Comprehend::ListDominantLanguageDetectionJobsResponse> instance

Gets a list of the dominant language detection jobs that you have
submitted.


=head2 ListEntitiesDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::EntitiesDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListEntitiesDetectionJobs>

Returns: a L<Paws::Comprehend::ListEntitiesDetectionJobsResponse> instance

Gets a list of the entity detection jobs that you have submitted.


=head2 ListEntityRecognizers

=over

=item [Filter => L<Paws::Comprehend::EntityRecognizerFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListEntityRecognizers>

Returns: a L<Paws::Comprehend::ListEntityRecognizersResponse> instance

Gets a list of the properties of all entity recognizers that you
created, including recognizers currently in training. Allows you to
filter the list of recognizers based on criteria such as status and
submission time. This call returns up to 500 entity recognizers in the
list, with a default number of 100 recognizers in the list.

The results of this list are not in any particular order. Please get
the list and sort locally if needed.


=head2 ListKeyPhrasesDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::KeyPhrasesDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListKeyPhrasesDetectionJobs>

Returns: a L<Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse> instance

Get a list of key phrase detection jobs that you have submitted.


=head2 ListSentimentDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::SentimentDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListSentimentDetectionJobs>

Returns: a L<Paws::Comprehend::ListSentimentDetectionJobsResponse> instance

Gets a list of sentiment detection jobs that you have submitted.


=head2 ListTopicsDetectionJobs

=over

=item [Filter => L<Paws::Comprehend::TopicsDetectionJobFilter>]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::ListTopicsDetectionJobs>

Returns: a L<Paws::Comprehend::ListTopicsDetectionJobsResponse> instance

Gets a list of the topic detection jobs that you have submitted.


=head2 StartDocumentClassificationJob

=over

=item DataAccessRoleArn => Str

=item DocumentClassifierArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartDocumentClassificationJob>

Returns: a L<Paws::Comprehend::StartDocumentClassificationJobResponse> instance

Starts an asynchronous document classification job. Use the operation
to track the progress of the job.


=head2 StartDominantLanguageDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartDominantLanguageDetectionJob>

Returns: a L<Paws::Comprehend::StartDominantLanguageDetectionJobResponse> instance

Starts an asynchronous dominant language detection job for a collection
of documents. Use the operation to track the status of a job.


=head2 StartEntitiesDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [EntityRecognizerArn => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::StartEntitiesDetectionJobResponse> instance

Starts an asynchronous entity detection job for a collection of
documents. Use the operation to track the status of a job.

This API can be used for either standard entity detection or custom
entity recognition. In order to be used for custom entity recognition,
the optional C<EntityRecognizerArn> must be used in order to provide
access to the recognizer being used to detect the custom entity.


=head2 StartKeyPhrasesDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartKeyPhrasesDetectionJob>

Returns: a L<Paws::Comprehend::StartKeyPhrasesDetectionJobResponse> instance

Starts an asynchronous key phrase detection job for a collection of
documents. Use the operation to track the status of a job.


=head2 StartSentimentDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item LanguageCode => Str

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartSentimentDetectionJob>

Returns: a L<Paws::Comprehend::StartSentimentDetectionJobResponse> instance

Starts an asynchronous sentiment detection job for a collection of
documents. use the operation to track the status of a job.


=head2 StartTopicsDetectionJob

=over

=item DataAccessRoleArn => Str

=item InputDataConfig => L<Paws::Comprehend::InputDataConfig>

=item OutputDataConfig => L<Paws::Comprehend::OutputDataConfig>

=item [ClientRequestToken => Str]

=item [JobName => Str]

=item [NumberOfTopics => Int]


=back

Each argument is described in detail in: L<Paws::Comprehend::StartTopicsDetectionJob>

Returns: a L<Paws::Comprehend::StartTopicsDetectionJobResponse> instance

Starts an asynchronous topic detection job. Use the
C<DescribeTopicDetectionJob> operation to track the status of a job.


=head2 StopDominantLanguageDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopDominantLanguageDetectionJob>

Returns: a L<Paws::Comprehend::StopDominantLanguageDetectionJobResponse> instance

Stops a dominant language detection job in progress.

If the job state is C<IN_PROGRESS> the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopEntitiesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopEntitiesDetectionJob>

Returns: a L<Paws::Comprehend::StopEntitiesDetectionJobResponse> instance

Stops an entities detection job in progress.

If the job state is C<IN_PROGRESS> the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopKeyPhrasesDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopKeyPhrasesDetectionJob>

Returns: a L<Paws::Comprehend::StopKeyPhrasesDetectionJobResponse> instance

Stops a key phrases detection job in progress.

If the job state is C<IN_PROGRESS> the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopSentimentDetectionJob

=over

=item JobId => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopSentimentDetectionJob>

Returns: a L<Paws::Comprehend::StopSentimentDetectionJobResponse> instance

Stops a sentiment detection job in progress.

If the job state is C<IN_PROGRESS> the job is marked for termination
and put into the C<STOP_REQUESTED> state. If the job completes before
it can be stopped, it is put into the C<COMPLETED> state; otherwise the
job is be stopped and put into the C<STOPPED> state.

If the job is in the C<COMPLETED> or C<FAILED> state when you call the
C<StopDominantLanguageDetectionJob> operation, the operation returns a
400 Internal Request Exception.

When a job is stopped, any documents already processed are written to
the output location.


=head2 StopTrainingDocumentClassifier

=over

=item DocumentClassifierArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopTrainingDocumentClassifier>

Returns: a L<Paws::Comprehend::StopTrainingDocumentClassifierResponse> instance

Stops a document classifier training job while in progress.

If the training job state is C<TRAINING>, the job is marked for
termination and put into the C<STOP_REQUESTED> state. If the training
job completes before it can be stopped, it is put into the C<TRAINED>;
otherwise the training job is stopped and put into the C<STOPPED> state
and the service sends back an HTTP 200 response with an empty HTTP
body.


=head2 StopTrainingEntityRecognizer

=over

=item EntityRecognizerArn => Str


=back

Each argument is described in detail in: L<Paws::Comprehend::StopTrainingEntityRecognizer>

Returns: a L<Paws::Comprehend::StopTrainingEntityRecognizerResponse> instance

Stops an entity recognizer training job while in progress.

If the training job state is C<TRAINING>, the job is marked for
termination and put into the C<STOP_REQUESTED> state. If the training
job completes before it can be stopped, it is put into the C<TRAINED>;
otherwise the training job is stopped and putted into the C<STOPPED>
state and the service sends back an HTTP 200 response with an empty
HTTP body.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDocumentClassificationJobs(sub { },[Filter => L<Paws::Comprehend::DocumentClassificationJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllDocumentClassificationJobs([Filter => L<Paws::Comprehend::DocumentClassificationJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DocumentClassificationJobPropertiesList, passing the object as the first parameter, and the string 'DocumentClassificationJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListDocumentClassificationJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDocumentClassifiers(sub { },[Filter => L<Paws::Comprehend::DocumentClassifierFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllDocumentClassifiers([Filter => L<Paws::Comprehend::DocumentClassifierFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DocumentClassifierPropertiesList, passing the object as the first parameter, and the string 'DocumentClassifierPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListDocumentClassifiersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDominantLanguageDetectionJobs(sub { },[Filter => L<Paws::Comprehend::DominantLanguageDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllDominantLanguageDetectionJobs([Filter => L<Paws::Comprehend::DominantLanguageDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DominantLanguageDetectionJobPropertiesList, passing the object as the first parameter, and the string 'DominantLanguageDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListDominantLanguageDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntitiesDetectionJobs(sub { },[Filter => L<Paws::Comprehend::EntitiesDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllEntitiesDetectionJobs([Filter => L<Paws::Comprehend::EntitiesDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EntitiesDetectionJobPropertiesList, passing the object as the first parameter, and the string 'EntitiesDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListEntitiesDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEntityRecognizers(sub { },[Filter => L<Paws::Comprehend::EntityRecognizerFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllEntityRecognizers([Filter => L<Paws::Comprehend::EntityRecognizerFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EntityRecognizerPropertiesList, passing the object as the first parameter, and the string 'EntityRecognizerPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListEntityRecognizersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllKeyPhrasesDetectionJobs(sub { },[Filter => L<Paws::Comprehend::KeyPhrasesDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllKeyPhrasesDetectionJobs([Filter => L<Paws::Comprehend::KeyPhrasesDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - KeyPhrasesDetectionJobPropertiesList, passing the object as the first parameter, and the string 'KeyPhrasesDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListKeyPhrasesDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllSentimentDetectionJobs(sub { },[Filter => L<Paws::Comprehend::SentimentDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllSentimentDetectionJobs([Filter => L<Paws::Comprehend::SentimentDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SentimentDetectionJobPropertiesList, passing the object as the first parameter, and the string 'SentimentDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListSentimentDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllTopicsDetectionJobs(sub { },[Filter => L<Paws::Comprehend::TopicsDetectionJobFilter>, MaxResults => Int, NextToken => Str])

=head2 ListAllTopicsDetectionJobs([Filter => L<Paws::Comprehend::TopicsDetectionJobFilter>, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - TopicsDetectionJobPropertiesList, passing the object as the first parameter, and the string 'TopicsDetectionJobPropertiesList' as the second parameter 

If not, it will return a a L<Paws::Comprehend::ListTopicsDetectionJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

