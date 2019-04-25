package Paws::MachineLearning;
  use Moose;
  sub service { 'machinelearning' }
  sub signing_name { 'machinelearning' }
  sub version { '2014-12-12' }
  sub target_prefix { 'AmazonML_20141212' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub AddTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::AddTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBatchPrediction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::CreateBatchPrediction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSourceFromRDS {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::CreateDataSourceFromRDS', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSourceFromRedshift {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::CreateDataSourceFromRedshift', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDataSourceFromS3 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::CreateDataSourceFromS3', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::CreateEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMLModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::CreateMLModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRealtimeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::CreateRealtimeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBatchPrediction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DeleteBatchPrediction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DeleteDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DeleteEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMLModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DeleteMLModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRealtimeEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DeleteRealtimeEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBatchPredictions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DescribeBatchPredictions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataSources {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DescribeDataSources', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvaluations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DescribeEvaluations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMLModels {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DescribeMLModels', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBatchPrediction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::GetBatchPrediction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::GetDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::GetEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMLModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::GetMLModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Predict {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::Predict', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBatchPrediction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::UpdateBatchPrediction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDataSource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::UpdateDataSource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEvaluation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::UpdateEvaluation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMLModel {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::MachineLearning::UpdateMLModel', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllBatchPredictions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeBatchPredictions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeBatchPredictions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->DescribeBatchPredictions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub DescribeAllDataSources {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeDataSources(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeDataSources(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->DescribeDataSources(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub DescribeAllEvaluations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeEvaluations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeEvaluations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->DescribeEvaluations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }
  sub DescribeAllMLModels {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeMLModels(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeMLModels(@_, NextToken => $next_result->NextToken);
        push @{ $result->Results }, @{ $next_result->Results };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Results') foreach (@{ $result->Results });
        $result = $self->DescribeMLModels(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Results') foreach (@{ $result->Results });
    }

    return undef
  }


  sub operations { qw/AddTags CreateBatchPrediction CreateDataSourceFromRDS CreateDataSourceFromRedshift CreateDataSourceFromS3 CreateEvaluation CreateMLModel CreateRealtimeEndpoint DeleteBatchPrediction DeleteDataSource DeleteEvaluation DeleteMLModel DeleteRealtimeEndpoint DeleteTags DescribeBatchPredictions DescribeDataSources DescribeEvaluations DescribeMLModels DescribeTags GetBatchPrediction GetDataSource GetEvaluation GetMLModel Predict UpdateBatchPrediction UpdateDataSource UpdateEvaluation UpdateMLModel / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning - Perl Interface to AWS Amazon Machine Learning

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('MachineLearning');
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

Definition of the public APIs exposed by Amazon Machine Learning

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/machinelearning-2014-12-12>


=head1 METHODS

=head2 AddTags

=over

=item ResourceId => Str

=item ResourceType => Str

=item Tags => ArrayRef[L<Paws::MachineLearning::Tag>]


=back

Each argument is described in detail in: L<Paws::MachineLearning::AddTags>

Returns: a L<Paws::MachineLearning::AddTagsOutput> instance

Adds one or more tags to an object, up to a limit of 10. Each tag
consists of a key and an optional value. If you add a tag using a key
that is already associated with the ML object, C<AddTags> updates the
tag's value.


=head2 CreateBatchPrediction

=over

=item BatchPredictionDataSourceId => Str

=item BatchPredictionId => Str

=item MLModelId => Str

=item OutputUri => Str

=item [BatchPredictionName => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::CreateBatchPrediction>

Returns: a L<Paws::MachineLearning::CreateBatchPredictionOutput> instance

Generates predictions for a group of observations. The observations to
process exist in one or more data files referenced by a C<DataSource>.
This operation creates a new C<BatchPrediction>, and uses an C<MLModel>
and the data files referenced by the C<DataSource> as information
sources.

C<CreateBatchPrediction> is an asynchronous operation. In response to
C<CreateBatchPrediction>, Amazon Machine Learning (Amazon ML)
immediately returns and sets the C<BatchPrediction> status to
C<PENDING>. After the C<BatchPrediction> completes, Amazon ML sets the
status to C<COMPLETED>.

You can poll for status updates by using the GetBatchPrediction
operation and checking the C<Status> parameter of the result. After the
C<COMPLETED> status appears, the results are available in the location
specified by the C<OutputUri> parameter.


=head2 CreateDataSourceFromRDS

=over

=item DataSourceId => Str

=item RDSData => L<Paws::MachineLearning::RDSDataSpec>

=item RoleARN => Str

=item [ComputeStatistics => Bool]

=item [DataSourceName => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::CreateDataSourceFromRDS>

Returns: a L<Paws::MachineLearning::CreateDataSourceFromRDSOutput> instance

Creates a C<DataSource> object from an Amazon Relational Database
Service (http://aws.amazon.com/rds/) (Amazon RDS). A C<DataSource>
references data that can be used to perform C<CreateMLModel>,
C<CreateEvaluation>, or C<CreateBatchPrediction> operations.

C<CreateDataSourceFromRDS> is an asynchronous operation. In response to
C<CreateDataSourceFromRDS>, Amazon Machine Learning (Amazon ML)
immediately returns and sets the C<DataSource> status to C<PENDING>.
After the C<DataSource> is created and ready for use, Amazon ML sets
the C<Status> parameter to C<COMPLETED>. C<DataSource> in the
C<COMPLETED> or C<PENDING> state can be used only to perform
C<E<gt>CreateMLModel>E<gt>, C<CreateEvaluation>, or
C<CreateBatchPrediction> operations.

If Amazon ML cannot accept the input source, it sets the C<Status>
parameter to C<FAILED> and includes an error message in the C<Message>
attribute of the C<GetDataSource> operation response.


=head2 CreateDataSourceFromRedshift

=over

=item DataSourceId => Str

=item DataSpec => L<Paws::MachineLearning::RedshiftDataSpec>

=item RoleARN => Str

=item [ComputeStatistics => Bool]

=item [DataSourceName => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::CreateDataSourceFromRedshift>

Returns: a L<Paws::MachineLearning::CreateDataSourceFromRedshiftOutput> instance

Creates a C<DataSource> from a database hosted on an Amazon Redshift
cluster. A C<DataSource> references data that can be used to perform
either C<CreateMLModel>, C<CreateEvaluation>, or
C<CreateBatchPrediction> operations.

C<CreateDataSourceFromRedshift> is an asynchronous operation. In
response to C<CreateDataSourceFromRedshift>, Amazon Machine Learning
(Amazon ML) immediately returns and sets the C<DataSource> status to
C<PENDING>. After the C<DataSource> is created and ready for use,
Amazon ML sets the C<Status> parameter to C<COMPLETED>. C<DataSource>
in C<COMPLETED> or C<PENDING> states can be used to perform only
C<CreateMLModel>, C<CreateEvaluation>, or C<CreateBatchPrediction>
operations.

If Amazon ML can't accept the input source, it sets the C<Status>
parameter to C<FAILED> and includes an error message in the C<Message>
attribute of the C<GetDataSource> operation response.

The observations should be contained in the database hosted on an
Amazon Redshift cluster and should be specified by a C<SelectSqlQuery>
query. Amazon ML executes an C<Unload> command in Amazon Redshift to
transfer the result set of the C<SelectSqlQuery> query to
C<S3StagingLocation>.

After the C<DataSource> has been created, it's ready for use in
evaluations and batch predictions. If you plan to use the C<DataSource>
to train an C<MLModel>, the C<DataSource> also requires a recipe. A
recipe describes how each input variable will be used in training an
C<MLModel>. Will the variable be included or excluded from training?
Will the variable be manipulated; for example, will it be combined with
another variable or will it be split apart into word combinations? The
recipe provides answers to these questions.

You can't change an existing datasource, but you can copy and modify
the settings from an existing Amazon Redshift datasource to create a
new datasource. To do so, call C<GetDataSource> for an existing
datasource and copy the values to a C<CreateDataSource> call. Change
the settings that you want to change and make sure that all required
fields have the appropriate values.


=head2 CreateDataSourceFromS3

=over

=item DataSourceId => Str

=item DataSpec => L<Paws::MachineLearning::S3DataSpec>

=item [ComputeStatistics => Bool]

=item [DataSourceName => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::CreateDataSourceFromS3>

Returns: a L<Paws::MachineLearning::CreateDataSourceFromS3Output> instance

Creates a C<DataSource> object. A C<DataSource> references data that
can be used to perform C<CreateMLModel>, C<CreateEvaluation>, or
C<CreateBatchPrediction> operations.

C<CreateDataSourceFromS3> is an asynchronous operation. In response to
C<CreateDataSourceFromS3>, Amazon Machine Learning (Amazon ML)
immediately returns and sets the C<DataSource> status to C<PENDING>.
After the C<DataSource> has been created and is ready for use, Amazon
ML sets the C<Status> parameter to C<COMPLETED>. C<DataSource> in the
C<COMPLETED> or C<PENDING> state can be used to perform only
C<CreateMLModel>, C<CreateEvaluation> or C<CreateBatchPrediction>
operations.

If Amazon ML can't accept the input source, it sets the C<Status>
parameter to C<FAILED> and includes an error message in the C<Message>
attribute of the C<GetDataSource> operation response.

The observation data used in a C<DataSource> should be ready to use;
that is, it should have a consistent structure, and missing data values
should be kept to a minimum. The observation data must reside in one or
more .csv files in an Amazon Simple Storage Service (Amazon S3)
location, along with a schema that describes the data items by name and
type. The same schema must be used for all of the data files referenced
by the C<DataSource>.

After the C<DataSource> has been created, it's ready to use in
evaluations and batch predictions. If you plan to use the C<DataSource>
to train an C<MLModel>, the C<DataSource> also needs a recipe. A recipe
describes how each input variable will be used in training an
C<MLModel>. Will the variable be included or excluded from training?
Will the variable be manipulated; for example, will it be combined with
another variable or will it be split apart into word combinations? The
recipe provides answers to these questions.


=head2 CreateEvaluation

=over

=item EvaluationDataSourceId => Str

=item EvaluationId => Str

=item MLModelId => Str

=item [EvaluationName => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::CreateEvaluation>

Returns: a L<Paws::MachineLearning::CreateEvaluationOutput> instance

Creates a new C<Evaluation> of an C<MLModel>. An C<MLModel> is
evaluated on a set of observations associated to a C<DataSource>. Like
a C<DataSource> for an C<MLModel>, the C<DataSource> for an
C<Evaluation> contains values for the C<Target Variable>. The
C<Evaluation> compares the predicted result for each observation to the
actual outcome and provides a summary so that you know how effective
the C<MLModel> functions on the test data. Evaluation generates a
relevant performance metric, such as BinaryAUC, RegressionRMSE or
MulticlassAvgFScore based on the corresponding C<MLModelType>:
C<BINARY>, C<REGRESSION> or C<MULTICLASS>.

C<CreateEvaluation> is an asynchronous operation. In response to
C<CreateEvaluation>, Amazon Machine Learning (Amazon ML) immediately
returns and sets the evaluation status to C<PENDING>. After the
C<Evaluation> is created and ready for use, Amazon ML sets the status
to C<COMPLETED>.

You can use the C<GetEvaluation> operation to check progress of the
evaluation during the creation operation.


=head2 CreateMLModel

=over

=item MLModelId => Str

=item MLModelType => Str

=item TrainingDataSourceId => Str

=item [MLModelName => Str]

=item [Parameters => L<Paws::MachineLearning::TrainingParameters>]

=item [Recipe => Str]

=item [RecipeUri => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::CreateMLModel>

Returns: a L<Paws::MachineLearning::CreateMLModelOutput> instance

Creates a new C<MLModel> using the C<DataSource> and the recipe as
information sources.

An C<MLModel> is nearly immutable. Users can update only the
C<MLModelName> and the C<ScoreThreshold> in an C<MLModel> without
creating a new C<MLModel>.

C<CreateMLModel> is an asynchronous operation. In response to
C<CreateMLModel>, Amazon Machine Learning (Amazon ML) immediately
returns and sets the C<MLModel> status to C<PENDING>. After the
C<MLModel> has been created and ready is for use, Amazon ML sets the
status to C<COMPLETED>.

You can use the C<GetMLModel> operation to check the progress of the
C<MLModel> during the creation operation.

C<CreateMLModel> requires a C<DataSource> with computed statistics,
which can be created by setting C<ComputeStatistics> to C<true> in
C<CreateDataSourceFromRDS>, C<CreateDataSourceFromS3>, or
C<CreateDataSourceFromRedshift> operations.


=head2 CreateRealtimeEndpoint

=over

=item MLModelId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::CreateRealtimeEndpoint>

Returns: a L<Paws::MachineLearning::CreateRealtimeEndpointOutput> instance

Creates a real-time endpoint for the C<MLModel>. The endpoint contains
the URI of the C<MLModel>; that is, the location to send real-time
prediction requests for the specified C<MLModel>.


=head2 DeleteBatchPrediction

=over

=item BatchPredictionId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::DeleteBatchPrediction>

Returns: a L<Paws::MachineLearning::DeleteBatchPredictionOutput> instance

Assigns the DELETED status to a C<BatchPrediction>, rendering it
unusable.

After using the C<DeleteBatchPrediction> operation, you can use the
GetBatchPrediction operation to verify that the status of the
C<BatchPrediction> changed to DELETED.

B<Caution:> The result of the C<DeleteBatchPrediction> operation is
irreversible.


=head2 DeleteDataSource

=over

=item DataSourceId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::DeleteDataSource>

Returns: a L<Paws::MachineLearning::DeleteDataSourceOutput> instance

Assigns the DELETED status to a C<DataSource>, rendering it unusable.

After using the C<DeleteDataSource> operation, you can use the
GetDataSource operation to verify that the status of the C<DataSource>
changed to DELETED.

B<Caution:> The results of the C<DeleteDataSource> operation are
irreversible.


=head2 DeleteEvaluation

=over

=item EvaluationId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::DeleteEvaluation>

Returns: a L<Paws::MachineLearning::DeleteEvaluationOutput> instance

Assigns the C<DELETED> status to an C<Evaluation>, rendering it
unusable.

After invoking the C<DeleteEvaluation> operation, you can use the
C<GetEvaluation> operation to verify that the status of the
C<Evaluation> changed to C<DELETED>.

The results of the C<DeleteEvaluation> operation are irreversible.


=head2 DeleteMLModel

=over

=item MLModelId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::DeleteMLModel>

Returns: a L<Paws::MachineLearning::DeleteMLModelOutput> instance

Assigns the C<DELETED> status to an C<MLModel>, rendering it unusable.

After using the C<DeleteMLModel> operation, you can use the
C<GetMLModel> operation to verify that the status of the C<MLModel>
changed to DELETED.

B<Caution:> The result of the C<DeleteMLModel> operation is
irreversible.


=head2 DeleteRealtimeEndpoint

=over

=item MLModelId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::DeleteRealtimeEndpoint>

Returns: a L<Paws::MachineLearning::DeleteRealtimeEndpointOutput> instance

Deletes a real time endpoint of an C<MLModel>.


=head2 DeleteTags

=over

=item ResourceId => Str

=item ResourceType => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::MachineLearning::DeleteTags>

Returns: a L<Paws::MachineLearning::DeleteTagsOutput> instance

Deletes the specified tags associated with an ML object. After this
operation is complete, you can't recover deleted tags.

If you specify a tag that doesn't exist, Amazon ML ignores it.


=head2 DescribeBatchPredictions

=over

=item [EQ => Str]

=item [FilterVariable => Str]

=item [GE => Str]

=item [GT => Str]

=item [LE => Str]

=item [Limit => Int]

=item [LT => Str]

=item [NE => Str]

=item [NextToken => Str]

=item [Prefix => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::DescribeBatchPredictions>

Returns: a L<Paws::MachineLearning::DescribeBatchPredictionsOutput> instance

Returns a list of C<BatchPrediction> operations that match the search
criteria in the request.


=head2 DescribeDataSources

=over

=item [EQ => Str]

=item [FilterVariable => Str]

=item [GE => Str]

=item [GT => Str]

=item [LE => Str]

=item [Limit => Int]

=item [LT => Str]

=item [NE => Str]

=item [NextToken => Str]

=item [Prefix => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::DescribeDataSources>

Returns: a L<Paws::MachineLearning::DescribeDataSourcesOutput> instance

Returns a list of C<DataSource> that match the search criteria in the
request.


=head2 DescribeEvaluations

=over

=item [EQ => Str]

=item [FilterVariable => Str]

=item [GE => Str]

=item [GT => Str]

=item [LE => Str]

=item [Limit => Int]

=item [LT => Str]

=item [NE => Str]

=item [NextToken => Str]

=item [Prefix => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::DescribeEvaluations>

Returns: a L<Paws::MachineLearning::DescribeEvaluationsOutput> instance

Returns a list of C<DescribeEvaluations> that match the search criteria
in the request.


=head2 DescribeMLModels

=over

=item [EQ => Str]

=item [FilterVariable => Str]

=item [GE => Str]

=item [GT => Str]

=item [LE => Str]

=item [Limit => Int]

=item [LT => Str]

=item [NE => Str]

=item [NextToken => Str]

=item [Prefix => Str]

=item [SortOrder => Str]


=back

Each argument is described in detail in: L<Paws::MachineLearning::DescribeMLModels>

Returns: a L<Paws::MachineLearning::DescribeMLModelsOutput> instance

Returns a list of C<MLModel> that match the search criteria in the
request.


=head2 DescribeTags

=over

=item ResourceId => Str

=item ResourceType => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::DescribeTags>

Returns: a L<Paws::MachineLearning::DescribeTagsOutput> instance

Describes one or more of the tags for your Amazon ML object.


=head2 GetBatchPrediction

=over

=item BatchPredictionId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::GetBatchPrediction>

Returns: a L<Paws::MachineLearning::GetBatchPredictionOutput> instance

Returns a C<BatchPrediction> that includes detailed metadata, status,
and data file information for a C<Batch Prediction> request.


=head2 GetDataSource

=over

=item DataSourceId => Str

=item [Verbose => Bool]


=back

Each argument is described in detail in: L<Paws::MachineLearning::GetDataSource>

Returns: a L<Paws::MachineLearning::GetDataSourceOutput> instance

Returns a C<DataSource> that includes metadata and data file
information, as well as the current status of the C<DataSource>.

C<GetDataSource> provides results in normal or verbose format. The
verbose format adds the schema description and the list of files
pointed to by the DataSource to the normal format.


=head2 GetEvaluation

=over

=item EvaluationId => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::GetEvaluation>

Returns: a L<Paws::MachineLearning::GetEvaluationOutput> instance

Returns an C<Evaluation> that includes metadata as well as the current
status of the C<Evaluation>.


=head2 GetMLModel

=over

=item MLModelId => Str

=item [Verbose => Bool]


=back

Each argument is described in detail in: L<Paws::MachineLearning::GetMLModel>

Returns: a L<Paws::MachineLearning::GetMLModelOutput> instance

Returns an C<MLModel> that includes detailed metadata, data source
information, and the current status of the C<MLModel>.

C<GetMLModel> provides results in normal or verbose format.


=head2 Predict

=over

=item MLModelId => Str

=item PredictEndpoint => Str

=item Record => L<Paws::MachineLearning::Record>


=back

Each argument is described in detail in: L<Paws::MachineLearning::Predict>

Returns: a L<Paws::MachineLearning::PredictOutput> instance

Generates a prediction for the observation using the specified C<ML
Model>.

Not all response parameters will be populated. Whether a response
parameter is populated depends on the type of model requested.


=head2 UpdateBatchPrediction

=over

=item BatchPredictionId => Str

=item BatchPredictionName => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::UpdateBatchPrediction>

Returns: a L<Paws::MachineLearning::UpdateBatchPredictionOutput> instance

Updates the C<BatchPredictionName> of a C<BatchPrediction>.

You can use the C<GetBatchPrediction> operation to view the contents of
the updated data element.


=head2 UpdateDataSource

=over

=item DataSourceId => Str

=item DataSourceName => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::UpdateDataSource>

Returns: a L<Paws::MachineLearning::UpdateDataSourceOutput> instance

Updates the C<DataSourceName> of a C<DataSource>.

You can use the C<GetDataSource> operation to view the contents of the
updated data element.


=head2 UpdateEvaluation

=over

=item EvaluationId => Str

=item EvaluationName => Str


=back

Each argument is described in detail in: L<Paws::MachineLearning::UpdateEvaluation>

Returns: a L<Paws::MachineLearning::UpdateEvaluationOutput> instance

Updates the C<EvaluationName> of an C<Evaluation>.

You can use the C<GetEvaluation> operation to view the contents of the
updated data element.


=head2 UpdateMLModel

=over

=item MLModelId => Str

=item [MLModelName => Str]

=item [ScoreThreshold => Num]


=back

Each argument is described in detail in: L<Paws::MachineLearning::UpdateMLModel>

Returns: a L<Paws::MachineLearning::UpdateMLModelOutput> instance

Updates the C<MLModelName> and the C<ScoreThreshold> of an C<MLModel>.

You can use the C<GetMLModel> operation to view the contents of the
updated data element.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllBatchPredictions(sub { },[EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])

=head2 DescribeAllBatchPredictions([EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::MachineLearning::DescribeBatchPredictionsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllDataSources(sub { },[EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])

=head2 DescribeAllDataSources([EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::MachineLearning::DescribeDataSourcesOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllEvaluations(sub { },[EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])

=head2 DescribeAllEvaluations([EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::MachineLearning::DescribeEvaluationsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllMLModels(sub { },[EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])

=head2 DescribeAllMLModels([EQ => Str, FilterVariable => Str, GE => Str, GT => Str, LE => Str, Limit => Int, LT => Str, NE => Str, NextToken => Str, Prefix => Str, SortOrder => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Results, passing the object as the first parameter, and the string 'Results' as the second parameter 

If not, it will return a a L<Paws::MachineLearning::DescribeMLModelsOutput> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

