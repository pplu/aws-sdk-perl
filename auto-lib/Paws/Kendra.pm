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
  sub BatchPutDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Kendra::BatchPutDocument', @_);
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
  


  sub operations { qw/BatchDeleteDocument BatchPutDocument CreateDataSource CreateFaq CreateIndex DeleteFaq DeleteIndex DescribeDataSource DescribeFaq DescribeIndex ListDataSources ListDataSourceSyncJobs ListFaqs ListIndices Query StartDataSourceSyncJob StopDataSourceSyncJob SubmitFeedback UpdateDataSource UpdateIndex / }

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


=back

Each argument is described in detail in: L<Paws::Kendra::BatchDeleteDocument>

Returns: a L<Paws::Kendra::BatchDeleteDocumentResponse> instance

Removes one or more documents from an index. The documents must have
been added with the BatchPutDocument operation.

The documents are deleted asynchronously. You can see the progress of
the deletion by using AWS CloudWatch. Any error messages releated to
the processing of the batch are sent to you CloudWatch log.


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


=head2 CreateDataSource

=over

=item Configuration => L<Paws::Kendra::DataSourceConfiguration>

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item Type => Str

=item [Description => Str]

=item [Schedule => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateDataSource>

Returns: a L<Paws::Kendra::CreateDataSourceResponse> instance

Creates a data source that you use to with an Amazon Kendra index.

You specify a name, connector type and description for your data
source. You can choose between an S3 connector, a SharePoint Online
connector, and a database connector.

You also specify configuration information such as document metadata
(author, source URI, and so on) and user context information.

C<CreateDataSource> is a synchronous operation. The operation returns
200 if the data source was successfully created. Otherwise, an
exception is raised.


=head2 CreateFaq

=over

=item IndexId => Str

=item Name => Str

=item RoleArn => Str

=item S3Path => L<Paws::Kendra::S3Path>

=item [Description => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateFaq>

Returns: a L<Paws::Kendra::CreateFaqResponse> instance

Creates an new set of frequently asked question (FAQ) questions and
answers.


=head2 CreateIndex

=over

=item Name => Str

=item RoleArn => Str

=item [Description => Str]

=item [ServerSideEncryptionConfiguration => L<Paws::Kendra::ServerSideEncryptionConfiguration>]


=back

Each argument is described in detail in: L<Paws::Kendra::CreateIndex>

Returns: a L<Paws::Kendra::CreateIndexResponse> instance

Creates a new Amazon Kendra index. Index creation is an asynchronous
operation. To determine if index creation has completed, check the
C<Status> field returned from a call to . The C<Status> field is set to
C<ACTIVE> when the index is ready to use.

Once the index is active you can index your documents using the
operation or using one of the supported data sources.


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
the C<Status> field returned by a call to the DescribeIndex operation
is set to C<DELETING>.


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


=head2 Query

=over

=item IndexId => Str

=item QueryText => Str

=item [AttributeFilter => L<Paws::Kendra::AttributeFilter>]

=item [Facets => ArrayRef[L<Paws::Kendra::Facet>]]

=item [PageNumber => Int]

=item [PageSize => Int]

=item [QueryResultTypeFilter => Str]

=item [RequestedDocumentAttributes => ArrayRef[Str|Undef]]


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

=item [Description => Str]

=item [DocumentMetadataConfigurationUpdates => ArrayRef[L<Paws::Kendra::DocumentMetadataConfiguration>]]

=item [Name => Str]

=item [RoleArn => Str]


=back

Each argument is described in detail in: L<Paws::Kendra::UpdateIndex>

Returns: nothing

Updates an existing Amazon Kendra index.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

