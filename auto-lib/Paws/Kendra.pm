package Paws::Kendra;
  use Moose;
  sub service { 'kendra' }
  sub signing_name { 'kendra' }
  sub version { '2019-02-03' }
  sub target_prefix { 'AWSKendraFrontendService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub BatchDeleteDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchDeleteDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchGetDocumentStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchGetDocumentStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchPutDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchPutDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ClearQuerySuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ClearQuerySuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFaq {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateFaq', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::CreateThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFaq {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteFaq', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DeleteThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFaq {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeFaq', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeQuerySuggestionsConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeQuerySuggestionsConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::DescribeThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetQuerySuggestions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::GetQuerySuggestions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDataSourceSyncJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListDataSourceSyncJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFaqs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListFaqs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListIndices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListIndices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListQuerySuggestionsBlockLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListQuerySuggestionsBlockLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListThesauri {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::ListThesauri', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Query {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::Query', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartDataSourceSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::StartDataSourceSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopDataSourceSyncJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::StopDataSourceSyncJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SubmitFeedback {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::SubmitFeedback', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateIndex {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateIndex', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuerySuggestionsBlockList {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateQuerySuggestionsBlockList', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateQuerySuggestionsConfig {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateQuerySuggestionsConfig', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateThesaurus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::UpdateThesaurus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/BatchDeleteDocument BatchGetDocumentStatus BatchPutDocument ClearQuerySuggestions CreateDataSource CreateFaq CreateIndex CreateQuerySuggestionsBlockList CreateThesaurus DeleteDataSource DeleteFaq DeleteIndex DeleteQuerySuggestionsBlockList DeleteThesaurus DescribeDataSource DescribeFaq DescribeIndex DescribeQuerySuggestionsBlockList DescribeQuerySuggestionsConfig DescribeThesaurus GetQuerySuggestions ListDataSources ListDataSourceSyncJobs ListFaqs ListIndices ListQuerySuggestionsBlockLists ListTagsForResource ListThesauri Query StartDataSourceSyncJob StopDataSourceSyncJob SubmitFeedback TagResource UntagResource UpdateDataSource UpdateIndex UpdateQuerySuggestionsBlockList UpdateQuerySuggestionsConfig UpdateThesaurus / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra - Perl Interface to AWS AWSKendraFrontendService

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Kendra');
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

Amazon Kendra is a service for indexing large document sets.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra-2019-02-03>


=head1 METHODS

=head2 BatchDeleteDocument

=over

=item DocumentIdList => ArrayRef[Str|Undef]

=item IndexId => Str

=item [DataSourceSyncJobMetricTarget => L<Paws::Kendra::DataSourceSyncJobMetricTarget>]


=back

Each argument is described in detail in: L<Paws::Kendra::BatchDeleteDocument>

Returns: a L<Paws::Kendra::BatchDeleteDocumentResponse> instance

Removes one or more documents from an index. The documents must have
been added with the C<BatchPutDocument> operation.

The documents are deleted asynchronously. You can see the progress of
the deletion by using AWS CloudWatch. Any error messages related to the
processing of the batch are sent to you CloudWatch log.


=head2 BatchGetDocumentStatus

=over

=item DocumentInfoList => ArrayRef[L<Paws::Kendra::DocumentInfo>]

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::BatchGetDocumentStatus>

Returns: a L<Paws::Kendra::BatchGetDocumentStatusResponse> instance

Returns the indexing status for one or more documents submitted with
the BatchPutDocument
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchPutDocument.html)
operation.

When you use the C<BatchPutDocument> operation, documents are indexed
asynchronously. You can use the C<BatchGetDocumentStatus> operation to
get the current status of a list of documents so that you can determine
if they have been successfully indexed.

You can also use the C<BatchGetDocumentStatus> operation to check the
status of the BatchDeleteDocument
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchDeleteDocument.html)
operation. When a document is deleted from the index, Amazon Kendra
returns C<NOT_FOUND> as the status.


=head2 BatchPutDocument

=over

=item Documents => ArrayRef[L<Paws::Kendra::Document>]

=item IndexId => Str

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::BatchPutDocument>

Returns: a L<Paws::Kendra::BatchPutDocumentResponse> instance

Adds one or more documents to an index.

The C<BatchPutDocument> operation enables you to ingest inline
documents or a set of documents stored in an Amazon S3 bucket. Use this
operation to ingest your text and unstructured text into an index, add
custom attributes to the documents, and to attach an access control
list to the documents added to the index.

The documents are indexed asynchronously. You can see the progress of
the batch using AWS CloudWatch. Any error messages related to
processing the batch are sent to your AWS CloudWatch log.


=head2 ClearQuerySuggestions

=over

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::ClearQuerySuggestions>

Returns: nothing

Clears existing query suggestions from an index.

This deletes existing suggestions only, not the queries in the query
log. After you clear suggestions, Amazon Kendra learns new suggestions
based on new queries added to the query log from the time you cleared
suggestions. If you do not see any new suggestions, then please allow
Amazon Kendra to collect enough queries to learn new suggestions.


=head2 CreateDataSource

=over

=item IndexId => Str

=item Name => Str

=item Type => Str

=item [ClientToken => Str]

=item [Configuration => L<Paws::Kendra::DataSourceConfiguration>]

=item [Description => Str]

=item [RoleArn => Str]

=item [Schedule => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateDataSource>

Returns: a L<Paws::Kendra::CreateDataSourceResponse> instance

Creates a data source that you use to with an Amazon Kendra index.

You specify a name, data source connector type and description for your
data source. You also specify configuration information such as
document metadata (author, source URI, and so on) and user context
information.

C<CreateDataSource> is a synchronous operation. The operation returns
200 if the data source was successfully created. Otherwise, an
exception is raised.


=head2 CreateFaq

=over

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item S3Path => L<Paws::Kendra::S3Path>

=item [ClientToken => Str]

=item [Description => Str]

=item [FileFormat => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateFaq>

Returns: a L<Paws::Kendra::CreateFaqResponse> instance

Creates an new set of frequently asked question (FAQ) questions and
answers.


=head2 CreateIndex

=over

=item Name => Str

=item RoleArn => Str

=item [ClientToken => Str]

=item [Description => Str]

=item [Edition => Str]

=item [ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]

=item [UserContextPolicy => Str]

=item [UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateIndex>

Returns: a L<Paws::Kendra::CreateIndexResponse> instance

Creates a new Amazon Kendra index. Index creation is an asynchronous
operation. To determine if index creation has completed, check the
C<Status> field returned from a call to C<DescribeIndex>. The C<Status>
field is set to C<ACTIVE> when the index is ready to use.

Once the index is active you can index your documents using the
C<BatchPutDocument> operation or using one of the supported data
sources.


=head2 CreateQuerySuggestionsBlockList

=over

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item SourceS3Path => L<Paws::Kendra::S3Path>

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateQuerySuggestionsBlockList>

Returns: a L<Paws::Kendra::CreateQuerySuggestionsBlockListResponse> instance

Creates a block list to exlcude certain queries from suggestions.

Any query that contains words or phrases specified in the block list is
blocked or filtered out from being shown as a suggestion.

You need to provide the file location of your block list text file in
your S3 bucket. In your text file, enter each block word or phrase on a
separate line.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).


=head2 CreateThesaurus

=over

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item SourceS3Path => L<Paws::Kendra::S3Path>

=item [ClientToken => Str]

=item [Description => Str]

=item [Tags => ArrayRef[L<Paws::Kendra::Tag>]]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateThesaurus>

Returns: a L<Paws::Kendra::CreateThesaurusResponse> instance

Creates a thesaurus for an index. The thesaurus contains a list of
synonyms in Solr format.


=head2 DeleteDataSource

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteDataSource>

Returns: nothing

Deletes an Amazon Kendra data source. An exception is not thrown if the
data source is already being deleted. While the data source is being
deleted, the C<Status> field returned by a call to the
C<DescribeDataSource> operation is set to C<DELETING>. For more
information, see Deleting Data Sources
(https://docs.aws.amazon.com/kendra/latest/dg/delete-data-source.html).


=head2 DeleteFaq

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteFaq>

Returns: nothing

Removes an FAQ from an index.


=head2 DeleteIndex

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteIndex>

Returns: nothing

Deletes an existing Amazon Kendra index. An exception is not thrown if
the index is already being deleted. While the index is being deleted,
the C<Status> field returned by a call to the C<DescribeIndex>
operation is set to C<DELETING>.


=head2 DeleteQuerySuggestionsBlockList

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteQuerySuggestionsBlockList>

Returns: nothing

Deletes a block list used for query suggestions for an index.

A deleted block list might not take effect right away. Amazon Kendra
needs to refresh the entire suggestions list to add back the queries
that were previously blocked.


=head2 DeleteThesaurus

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DeleteThesaurus>

Returns: nothing

Deletes an existing Amazon Kendra thesaurus.


=head2 DescribeDataSource

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeDataSource>

Returns: a L<Paws::Kendra::DescribeDataSourceResponse> instance

Gets information about a Amazon Kendra data source.


=head2 DescribeFaq

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeFaq>

Returns: a L<Paws::Kendra::DescribeFaqResponse> instance

Gets information about an FAQ list.


=head2 DescribeIndex

=over

=item Id => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeIndex>

Returns: a L<Paws::Kendra::DescribeIndexResponse> instance

Describes an existing Amazon Kendra index


=head2 DescribeQuerySuggestionsBlockList

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeQuerySuggestionsBlockList>

Returns: a L<Paws::Kendra::DescribeQuerySuggestionsBlockListResponse> instance

Describes a block list used for query suggestions for an index.

This is used to check the current settings that are applied to a block
list.


=head2 DescribeQuerySuggestionsConfig

=over

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeQuerySuggestionsConfig>

Returns: a L<Paws::Kendra::DescribeQuerySuggestionsConfigResponse> instance

Describes the settings of query suggestions for an index.

This is used to check the current settings applied to query
suggestions.


=head2 DescribeThesaurus

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::DescribeThesaurus>

Returns: a L<Paws::Kendra::DescribeThesaurusResponse> instance

Describes an existing Amazon Kendra thesaurus.


=head2 GetQuerySuggestions

=over

=item IndexId => Str

=item QueryText => Str

=item [MaxSuggestionsCount => Int]


=back

Each argument is described in detail in: L<Paws::Kendra::GetQuerySuggestions>

Returns: a L<Paws::Kendra::GetQuerySuggestionsResponse> instance

Fetches the queries that are suggested to your users.


=head2 ListDataSources

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListDataSources>

Returns: a L<Paws::Kendra::ListDataSourcesResponse> instance

Lists the data sources that you have created.


=head2 ListDataSourceSyncJobs

=over

=item Id => Str

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [StartTimeFilter => L<Paws::Kendra::TimeRange>]

=item [StatusFilter => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListDataSourceSyncJobs>

Returns: a L<Paws::Kendra::ListDataSourceSyncJobsResponse> instance

Gets statistics about synchronizing Amazon Kendra with a data source.


=head2 ListFaqs

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListFaqs>

Returns: a L<Paws::Kendra::ListFaqsResponse> instance

Gets a list of FAQ lists associated with an index.


=head2 ListIndices

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListIndices>

Returns: a L<Paws::Kendra::ListIndicesResponse> instance

Lists the Amazon Kendra indexes that you have created.


=head2 ListQuerySuggestionsBlockLists

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListQuerySuggestionsBlockLists>

Returns: a L<Paws::Kendra::ListQuerySuggestionsBlockListsResponse> instance

Lists the block lists used for query suggestions for an index.

For information on the current quota limits for block lists, see Quotas
for Amazon Kendra
(https://docs.aws.amazon.com/kendra/latest/dg/quotas.html).


=head2 ListTagsForResource

=over

=item ResourceARN => Str


=back

Each argument is described in detail in: L<Paws::Kendra::ListTagsForResource>

Returns: a L<Paws::Kendra::ListTagsForResourceResponse> instance

Gets a list of tags associated with a specified resource. Indexes,
FAQs, and data sources can have tags associated with them.


=head2 ListThesauri

=over

=item IndexId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::ListThesauri>

Returns: a L<Paws::Kendra::ListThesauriResponse> instance

Lists the Amazon Kendra thesauri associated with an index.


=head2 Query

=over

=item IndexId => Str

=item QueryText => Str

=item [AttributeFilter => L<Paws::Kendra::AttributeFilter>]

=item [DocumentRelevanceOverrideConfigurations => ArrayRef[L<Paws::Kendra::DocumentRelevanceConfiguration>]]

=item [Facets => ArrayRef[L<Paws::Kendra::Facet>]]

=item [PageNumber => Int]

=item [PageSize => Int]

=item [QueryResultTypeFilter => Str]

=item [RequestedDocumentAttributes => ArrayRef[Str|Undef]]

=item [SortingConfiguration => L<Paws::Kendra::SortingConfiguration>]

=item [UserContext => L<Paws::Kendra::UserContext>]

=item [VisitorId => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::Query>

Returns: a L<Paws::Kendra::QueryResult> instance

Searches an active index. Use this API to search your documents using
query. The C<Query> operation enables to do faceted search and to
filter results based on document attributes.

It also enables you to provide user context that Amazon Kendra uses to
enforce document access control in the search results.

Amazon Kendra searches your index for text content and question and
answer (FAQ) content. By default the response contains three types of
results.

=over

=item *

Relevant passages

=item *

Matching FAQs

=item *

Relevant documents

=back

You can specify that the query return only one type of result using the
C<QueryResultTypeConfig> parameter.

Each query returns the 100 most relevant results.


=head2 StartDataSourceSyncJob

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::StartDataSourceSyncJob>

Returns: a L<Paws::Kendra::StartDataSourceSyncJobResponse> instance

Starts a synchronization job for a data source. If a synchronization
job is already in progress, Amazon Kendra returns a
C<ResourceInUseException> exception.


=head2 StopDataSourceSyncJob

=over

=item Id => Str

=item IndexId => Str


=back

Each argument is described in detail in: L<Paws::Kendra::StopDataSourceSyncJob>

Returns: nothing

Stops a running synchronization job. You can't stop a scheduled
synchronization job.


=head2 SubmitFeedback

=over

=item IndexId => Str

=item QueryId => Str

=item [ClickFeedbackItems => ArrayRef[L<Paws::Kendra::ClickFeedback>]]

=item [RelevanceFeedbackItems => ArrayRef[L<Paws::Kendra::RelevanceFeedback>]]


=back

Each argument is described in detail in: L<Paws::Kendra::SubmitFeedback>

Returns: nothing

Enables you to provide feedback to Amazon Kendra to improve the
performance of the service.


=head2 TagResource

=over

=item ResourceARN => Str

=item Tags => ArrayRef[L<Paws::Kendra::Tag>]


=back

Each argument is described in detail in: L<Paws::Kendra::TagResource>

Returns: a L<Paws::Kendra::TagResourceResponse> instance

Adds the specified tag to the specified index, FAQ, or data source
resource. If the tag already exists, the existing value is replaced
with the new value.


=head2 UntagResource

=over

=item ResourceARN => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Kendra::UntagResource>

Returns: a L<Paws::Kendra::UntagResourceResponse> instance

Removes a tag from an index, FAQ, or a data source.


=head2 UpdateDataSource

=over

=item Id => Str

=item IndexId => Str

=item [Configuration => L<Paws::Kendra::DataSourceConfiguration>]

=item [Description => Str]

=item [Name => Str]

=item [RoleArn => Str]

=item [Schedule => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateDataSource>

Returns: nothing

Updates an existing Amazon Kendra data source.


=head2 UpdateIndex

=over

=item Id => Str

=item [CapacityUnits => L<Paws::Kendra::CapacityUnitsConfiguration>]

=item [Description => Str]

=item [DocumentMetadataConfigurationUpdates => ArrayRef[L<Paws::Kendra::DocumentMetadataConfiguration>]]

=item [Name => Str]

=item [RoleArn => Str]

=item [UserContextPolicy => Str]

=item [UserTokenConfigurations => ArrayRef[L<Paws::Kendra::UserTokenConfiguration>]]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateIndex>

Returns: nothing

Updates an existing Amazon Kendra index.


=head2 UpdateQuerySuggestionsBlockList

=over

=item Id => Str

=item IndexId => Str

=item [Description => Str]

=item [Name => Str]

=item [RoleArn => Str]

=item [SourceS3Path => L<Paws::Kendra::S3Path>]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateQuerySuggestionsBlockList>

Returns: nothing

Updates a block list used for query suggestions for an index.

Updates to a block list might not take effect right away. Amazon Kendra
needs to refresh the entire suggestions list to apply any updates to
the block list. Other changes not related to the block list apply
immediately.

If a block list is updating, then you need to wait for the first update
to finish before submitting another update.

Amazon Kendra supports partial updates, so you only need to provide the
fields you want to update.


=head2 UpdateQuerySuggestionsConfig

=over

=item IndexId => Str

=item [IncludeQueriesWithoutUserInformation => Bool]

=item [MinimumNumberOfQueryingUsers => Int]

=item [MinimumQueryCount => Int]

=item [Mode => Str]

=item [QueryLogLookBackWindowInDays => Int]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateQuerySuggestionsConfig>

Returns: nothing

Updates the settings of query suggestions for an index.

Amazon Kendra supports partial updates, so you only need to provide the
fields you want to update.

If an update is currently processing (i.e. 'happening'), you need to
wait for the update to finish before making another update.

Updates to query suggestions settings might not take effect right away.
The time for your updated settings to take effect depends on the
updates made and the number of search queries in your index.

You can still enable/disable query suggestions at any time.


=head2 UpdateThesaurus

=over

=item Id => Str

=item IndexId => Str

=item [Description => Str]

=item [Name => Str]

=item [RoleArn => Str]

=item [SourceS3Path => L<Paws::Kendra::S3Path>]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateThesaurus>

Returns: nothing

Updates a thesaurus file associated with an index.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

