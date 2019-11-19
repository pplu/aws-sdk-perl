# Generated from json/service_class.tt
package Paws::Forecast;
  use Moo;
  use Types::Standard qw/Int HashRef ArrayRef/;
  sub service { 'forecast' }
  sub signing_name { 'forecast' }
  sub version { '2018-06-26' }
  sub target_prefix { 'AmazonForecast' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => Int, default => 5);
  has retry => (is => 'ro', isa => HashRef, default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => ArrayRef, default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub CreateDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateForecastExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreateForecastExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreatePredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteForecastExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteForecastExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeletePredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDataset {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeDataset', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDatasetImportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeDatasetImportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeForecast {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeForecast', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeForecastExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribeForecastExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePredictor {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribePredictor', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccuracyMetrics {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::GetAccuracyMetrics', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListDatasetGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasetImportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListDatasetImportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDatasets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListDatasets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListForecastExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListForecastExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListForecasts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListForecasts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPredictors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListPredictors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDatasetGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::UpdateDatasetGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllDatasetGroups {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetGroups(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasetGroups(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatasetGroups }, @{ $next_result->DatasetGroups };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatasetGroups') foreach (@{ $result->DatasetGroups });
        $result = $self->ListDatasetGroups(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatasetGroups') foreach (@{ $result->DatasetGroups });
    }

    return undef
  }
  sub ListAllDatasetImportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasetImportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasetImportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->DatasetImportJobs }, @{ $next_result->DatasetImportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DatasetImportJobs') foreach (@{ $result->DatasetImportJobs });
        $result = $self->ListDatasetImportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DatasetImportJobs') foreach (@{ $result->DatasetImportJobs });
    }

    return undef
  }
  sub ListAllDatasets {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDatasets(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDatasets(@_, NextToken => $next_result->NextToken);
        push @{ $result->Datasets }, @{ $next_result->Datasets };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Datasets') foreach (@{ $result->Datasets });
        $result = $self->ListDatasets(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Datasets') foreach (@{ $result->Datasets });
    }

    return undef
  }
  sub ListAllForecastExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListForecastExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListForecastExportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->ForecastExportJobs }, @{ $next_result->ForecastExportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ForecastExportJobs') foreach (@{ $result->ForecastExportJobs });
        $result = $self->ListForecastExportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ForecastExportJobs') foreach (@{ $result->ForecastExportJobs });
    }

    return undef
  }
  sub ListAllForecasts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListForecasts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListForecasts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Forecasts }, @{ $next_result->Forecasts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Forecasts') foreach (@{ $result->Forecasts });
        $result = $self->ListForecasts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Forecasts') foreach (@{ $result->Forecasts });
    }

    return undef
  }
  sub ListAllPredictors {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPredictors(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPredictors(@_, NextToken => $next_result->NextToken);
        push @{ $result->Predictors }, @{ $next_result->Predictors };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Predictors') foreach (@{ $result->Predictors });
        $result = $self->ListPredictors(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Predictors') foreach (@{ $result->Predictors });
    }

    return undef
  }


  sub operations { qw/CreateDataset CreateDatasetGroup CreateDatasetImportJob CreateForecast CreateForecastExportJob CreatePredictor DeleteDataset DeleteDatasetGroup DeleteDatasetImportJob DeleteForecast DeleteForecastExportJob DeletePredictor DescribeDataset DescribeDatasetGroup DescribeDatasetImportJob DescribeForecast DescribeForecastExportJob DescribePredictor GetAccuracyMetrics ListDatasetGroups ListDatasetImportJobs ListDatasets ListForecastExportJobs ListForecasts ListPredictors UpdateDatasetGroup / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast - Perl Interface to AWS Amazon Forecast Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Forecast');
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

Provides APIs for creating and managing Amazon Forecast resources.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast-2018-06-26>


=head1 METHODS

=head2 CreateDataset

=over

=item DatasetName => Str

=item DatasetType => Str

=item Domain => Str

=item Schema => Forecast_Schema

=item [DataFrequency => Str]

=item [EncryptionConfig => Forecast_EncryptionConfig]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDataset>

Returns: a L<Paws::Forecast::CreateDatasetResponse> instance

Creates an Amazon Forecast dataset. The information about the dataset
that you provide helps Forecast understand how to consume the data for
model training. This includes the following:

=over

=item *

I<C<DataFrequency> > - How frequently your historical time-series data
is collected. Amazon Forecast uses this information when training the
model and generating a forecast.

=item *

I<C<Domain> > and I< C<DatasetType> > - Each dataset has an associated
dataset domain and a type within the domain. Amazon Forecast provides a
list of predefined domains and types within each domain. For each
unique dataset domain and type within the domain, Amazon Forecast
requires your data to include a minimum set of predefined fields.

=item *

I<C<Schema> > - A schema specifies the fields of the dataset, including
the field name and data type.

=back

After creating a dataset, you import your training data into the
dataset and add the dataset to a dataset group. You then use the
dataset group to create a predictor. For more information, see
howitworks-datasets-groups.

To get a list of all your datasets, use the ListDatasets operation.

The C<Status> of a dataset must be C<ACTIVE> before you can import
training data. Use the DescribeDataset operation to get the status.


=head2 CreateDatasetGroup

=over

=item DatasetGroupName => Str

=item Domain => Str

=item [DatasetArns => ArrayRef[Str|Undef]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDatasetGroup>

Returns: a L<Paws::Forecast::CreateDatasetGroupResponse> instance

Creates an Amazon Forecast dataset group, which holds a collection of
related datasets. You can add datasets to the dataset group when you
create the dataset group, or you can add datasets later with the
UpdateDatasetGroup operation.

After creating a dataset group and adding datasets, you use the dataset
group when you create a predictor. For more information, see
howitworks-datasets-groups.

To get a list of all your datasets groups, use the ListDatasetGroups
operation.

The C<Status> of a dataset group must be C<ACTIVE> before you can
create a predictor using the dataset group. Use the
DescribeDatasetGroup operation to get the status.


=head2 CreateDatasetImportJob

=over

=item DatasetArn => Str

=item DatasetImportJobName => Str

=item DataSource => Forecast_DataSource

=item [TimestampFormat => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDatasetImportJob>

Returns: a L<Paws::Forecast::CreateDatasetImportJobResponse> instance

Imports your training data to an Amazon Forecast dataset. You provide
the location of your training data in an Amazon Simple Storage Service
(Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
that you want to import the data to.

You must specify a DataSource object that includes an AWS Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the data. For more information, see aws-forecast-iam-roles.

Two properties of the training data are optionally specified:

=over

=item *

The delimiter that separates the data fields.

The default delimiter is a comma (,), which is the only supported
delimiter in this release.

=item *

The format of timestamps.

If the format is not specified, Amazon Forecast expects the format to
be "yyyy-MM-dd HH:mm:ss".

=back

When Amazon Forecast uploads your training data, it verifies that the
data was collected at the C<DataFrequency> specified when the target
dataset was created. For more information, see CreateDataset and
howitworks-datasets-groups. Amazon Forecast also verifies the delimiter
and timestamp format.

You can use the ListDatasetImportJobs operation to get a list of all
your dataset import jobs, filtered by specified criteria.

To get a list of all your dataset import jobs, filtered by the
specified criteria, use the ListDatasetGroups operation.


=head2 CreateForecast

=over

=item ForecastName => Str

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::CreateForecast>

Returns: a L<Paws::Forecast::CreateForecastResponse> instance

Creates a forecast for each item in the C<TARGET_TIME_SERIES> dataset
that was used to train the predictor. This is known as inference. To
retrieve the forecast for a single item at low latency, use the
operation. To export the complete forecast into your Amazon Simple
Storage Service (Amazon S3), use the CreateForecastExportJob operation.

The range of the forecast is determined by the C<ForecastHorizon>,
specified in the CreatePredictor request, multiplied by the
C<DataFrequency>, specified in the CreateDataset request. When you
query a forecast, you can request a specific date range within the
complete forecast.

To get a list of all your forecasts, use the ListForecasts operation.

The forecasts generated by Amazon Forecast are in the same timezone as
the dataset that was used to create the predictor.

For more information, see howitworks-forecast.

The C<Status> of the forecast must be C<ACTIVE> before you can query or
export the forecast. Use the DescribeForecast operation to get the
status.


=head2 CreateForecastExportJob

=over

=item Destination => Forecast_DataDestination

=item ForecastArn => Str

=item ForecastExportJobName => Str


=back

Each argument is described in detail in: L<Paws::Forecast::CreateForecastExportJob>

Returns: a L<Paws::Forecast::CreateForecastExportJobResponse> instance

Exports a forecast created by the CreateForecast operation to your
Amazon Simple Storage Service (Amazon S3) bucket.

You must specify a DataDestination object that includes an AWS Identity
and Access Management (IAM) role that Amazon Forecast can assume to
access the Amazon S3 bucket. For more information, see
aws-forecast-iam-roles.

For more information, see howitworks-forecast.

To get a list of all your forecast export jobs, use the
ListForecastExportJobs operation.

The C<Status> of the forecast export job must be C<ACTIVE> before you
can access the forecast in your Amazon S3 bucket. Use the
DescribeForecastExportJob operation to get the status.


=head2 CreatePredictor

=over

=item FeaturizationConfig => Forecast_FeaturizationConfig

=item ForecastHorizon => Int

=item InputDataConfig => Forecast_InputDataConfig

=item PredictorName => Str

=item [AlgorithmArn => Str]

=item [EncryptionConfig => Forecast_EncryptionConfig]

=item [EvaluationParameters => Forecast_EvaluationParameters]

=item [HPOConfig => Forecast_HyperParameterTuningJobConfig]

=item [PerformAutoML => Bool]

=item [PerformHPO => Bool]

=item [TrainingParameters => Forecast_TrainingParameters]


=back

Each argument is described in detail in: L<Paws::Forecast::CreatePredictor>

Returns: a L<Paws::Forecast::CreatePredictorResponse> instance

Creates an Amazon Forecast predictor.

In the request, you provide a dataset group and either specify an
algorithm or let Amazon Forecast choose the algorithm for you using
AutoML. If you specify an algorithm, you also can override
algorithm-specific hyperparameters.

Amazon Forecast uses the chosen algorithm to train a model using the
latest version of the datasets in the specified dataset group. The
result is called a predictor. You then generate a forecast using the
CreateForecast operation.

After training a model, the C<CreatePredictor> operation also evaluates
it. To see the evaluation metrics, use the GetAccuracyMetrics
operation. Always review the evaluation metrics before deciding to use
the predictor to generate a forecast.

Optionally, you can specify a featurization configuration to fill and
aggragate the data fields in the C<TARGET_TIME_SERIES> dataset to
improve model training. For more information, see FeaturizationConfig.

B<AutoML>

If you set C<PerformAutoML> to C<true>, Amazon Forecast evaluates each
algorithm and chooses the one that minimizes the C<objective function>.
The C<objective function> is defined as the mean of the weighted p10,
p50, and p90 quantile losses. For more information, see
EvaluationResult.

When AutoML is enabled, the following properties are disallowed:

=over

=item *

C<AlgorithmArn>

=item *

C<HPOConfig>

=item *

C<PerformHPO>

=item *

C<TrainingParameters>

=back

To get a list of all your predictors, use the ListPredictors operation.

The C<Status> of the predictor must be C<ACTIVE>, signifying that
training has completed, before you can use the predictor to create a
forecast. Use the DescribePredictor operation to get the status.


=head2 DeleteDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDataset>

Returns: nothing

Deletes an Amazon Forecast dataset created using the CreateDataset
operation. To be deleted, the dataset must have a status of C<ACTIVE>
or C<CREATE_FAILED>. Use the DescribeDataset operation to get the
status.


=head2 DeleteDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDatasetGroup>

Returns: nothing

Deletes a dataset group created using the CreateDatasetGroup operation.
To be deleted, the dataset group must have a status of C<ACTIVE>,
C<CREATE_FAILED>, or C<UPDATE_FAILED>. Use the DescribeDatasetGroup
operation to get the status.

The operation deletes only the dataset group, not the datasets in the
group.


=head2 DeleteDatasetImportJob

=over

=item DatasetImportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDatasetImportJob>

Returns: nothing

Deletes a dataset import job created using the CreateDatasetImportJob
operation. To be deleted, the import job must have a status of
C<ACTIVE> or C<CREATE_FAILED>. Use the DescribeDatasetImportJob
operation to get the status.


=head2 DeleteForecast

=over

=item ForecastArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteForecast>

Returns: nothing

Deletes a forecast created using the CreateForecast operation. To be
deleted, the forecast must have a status of C<ACTIVE> or
C<CREATE_FAILED>. Use the DescribeForecast operation to get the status.

You can't delete a forecast while it is being exported.


=head2 DeleteForecastExportJob

=over

=item ForecastExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteForecastExportJob>

Returns: nothing

Deletes a forecast export job created using the CreateForecastExportJob
operation. To be deleted, the export job must have a status of
C<ACTIVE> or C<CREATE_FAILED>. Use the DescribeForecastExportJob
operation to get the status.


=head2 DeletePredictor

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeletePredictor>

Returns: nothing

Deletes a predictor created using the CreatePredictor operation. To be
deleted, the predictor must have a status of C<ACTIVE> or
C<CREATE_FAILED>. Use the DescribePredictor operation to get the
status.

Any forecasts generated by the predictor will no longer be available.


=head2 DescribeDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeDataset>

Returns: a L<Paws::Forecast::DescribeDatasetResponse> instance

Describes an Amazon Forecast dataset created using the CreateDataset
operation.

In addition to listing the properties provided by the user in the
C<CreateDataset> request, this operation includes the following
properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=back



=head2 DescribeDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeDatasetGroup>

Returns: a L<Paws::Forecast::DescribeDatasetGroupResponse> instance

Describes a dataset group created using the CreateDatasetGroup
operation.

In addition to listing the properties provided by the user in the
C<CreateDatasetGroup> request, this operation includes the following
properties:

=over

=item *

C<DatasetArns> - The datasets belonging to the group.

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=back



=head2 DescribeDatasetImportJob

=over

=item DatasetImportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeDatasetImportJob>

Returns: a L<Paws::Forecast::DescribeDatasetImportJobResponse> instance

Describes a dataset import job created using the CreateDatasetImportJob
operation.

In addition to listing the properties provided by the user in the
C<CreateDatasetImportJob> request, this operation includes the
following properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<DataSize>

=item *

C<FieldStatistics>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribeForecast

=over

=item ForecastArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeForecast>

Returns: a L<Paws::Forecast::DescribeForecastResponse> instance

Describes a forecast created using the CreateForecast operation.

In addition to listing the properties provided by the user in the
C<CreateForecast> request, this operation includes the following
properties:

=over

=item *

C<DatasetGroupArn> - The dataset group that provided the training data.

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribeForecastExportJob

=over

=item ForecastExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeForecastExportJob>

Returns: a L<Paws::Forecast::DescribeForecastExportJobResponse> instance

Describes a forecast export job created using the
CreateForecastExportJob operation.

In addition to listing the properties provided by the user in the
C<CreateForecastExportJob> request, this operation includes the
following properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribePredictor

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribePredictor>

Returns: a L<Paws::Forecast::DescribePredictorResponse> instance

Describes a predictor created using the CreatePredictor operation.

In addition to listing the properties provided by the user in the
C<CreatePredictor> request, this operation includes the following
properties:

=over

=item *

C<DatasetImportJobArns> - The dataset import jobs used to import
training data.

=item *

C<AutoMLAlgorithmArns> - If AutoML is performed, the algorithms
evaluated.

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 GetAccuracyMetrics

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::GetAccuracyMetrics>

Returns: a L<Paws::Forecast::GetAccuracyMetricsResponse> instance

Provides metrics on the accuracy of the models that were trained by the
CreatePredictor operation. Use metrics to see how well the model
performed and to decide whether to use the predictor to generate a
forecast.

Metrics are generated for each backtest window evaluated. For more
information, see EvaluationParameters.

The parameters of the C<filling> method determine which items
contribute to the metrics. If C<zero> is specified, all items
contribute. If C<nan> is specified, only those items that have complete
data in the range being evaluated contribute. For more information, see
FeaturizationMethod.

For an example of how to train a model and review metrics, see
getting-started.


=head2 ListDatasetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasetGroups>

Returns: a L<Paws::Forecast::ListDatasetGroupsResponse> instance

Returns a list of dataset groups created using the CreateDatasetGroup
operation. For each dataset group, a summary of its properties,
including its Amazon Resource Name (ARN), is returned. You can retrieve
the complete set of properties by using the ARN with the
DescribeDatasetGroup operation.


=head2 ListDatasetImportJobs

=over

=item [Filters => ArrayRef[Forecast_Filter]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasetImportJobs>

Returns: a L<Paws::Forecast::ListDatasetImportJobsResponse> instance

Returns a list of dataset import jobs created using the
CreateDatasetImportJob operation. For each import job, a summary of its
properties, including its Amazon Resource Name (ARN), is returned. You
can retrieve the complete set of properties by using the ARN with the
DescribeDatasetImportJob operation. You can filter the list by
providing an array of Filter objects.


=head2 ListDatasets

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasets>

Returns: a L<Paws::Forecast::ListDatasetsResponse> instance

Returns a list of datasets created using the CreateDataset operation.
For each dataset, a summary of its properties, including its Amazon
Resource Name (ARN), is returned. You can retrieve the complete set of
properties by using the ARN with the DescribeDataset operation.


=head2 ListForecastExportJobs

=over

=item [Filters => ArrayRef[Forecast_Filter]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListForecastExportJobs>

Returns: a L<Paws::Forecast::ListForecastExportJobsResponse> instance

Returns a list of forecast export jobs created using the
CreateForecastExportJob operation. For each forecast export job, a
summary of its properties, including its Amazon Resource Name (ARN), is
returned. You can retrieve the complete set of properties by using the
ARN with the DescribeForecastExportJob operation. The list can be
filtered using an array of Filter objects.


=head2 ListForecasts

=over

=item [Filters => ArrayRef[Forecast_Filter]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListForecasts>

Returns: a L<Paws::Forecast::ListForecastsResponse> instance

Returns a list of forecasts created using the CreateForecast operation.
For each forecast, a summary of its properties, including its Amazon
Resource Name (ARN), is returned. You can retrieve the complete set of
properties by using the ARN with the DescribeForecast operation. The
list can be filtered using an array of Filter objects.


=head2 ListPredictors

=over

=item [Filters => ArrayRef[Forecast_Filter]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListPredictors>

Returns: a L<Paws::Forecast::ListPredictorsResponse> instance

Returns a list of predictors created using the CreatePredictor
operation. For each predictor, a summary of its properties, including
its Amazon Resource Name (ARN), is returned. You can retrieve the
complete set of properties by using the ARN with the DescribePredictor
operation. The list can be filtered using an array of Filter objects.


=head2 UpdateDatasetGroup

=over

=item DatasetArns => ArrayRef[Str|Undef]

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::UpdateDatasetGroup>

Returns: a L<Paws::Forecast::UpdateDatasetGroupResponse> instance

Replaces any existing datasets in the dataset group with the specified
datasets.

The C<Status> of the dataset group must be C<ACTIVE> before creating a
predictor using the dataset group. Use the DescribeDatasetGroup
operation to get the status.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDatasetGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetGroups, passing the object as the first parameter, and the string 'DatasetGroups' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetImportJobs(sub { },[Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetImportJobs([Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetImportJobs, passing the object as the first parameter, and the string 'DatasetImportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Datasets, passing the object as the first parameter, and the string 'Datasets' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllForecastExportJobs(sub { },[Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])

=head2 ListAllForecastExportJobs([Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ForecastExportJobs, passing the object as the first parameter, and the string 'ForecastExportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListForecastExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllForecasts(sub { },[Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])

=head2 ListAllForecasts([Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Forecasts, passing the object as the first parameter, and the string 'Forecasts' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListForecastsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPredictors(sub { },[Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])

=head2 ListAllPredictors([Filters => ArrayRef[Forecast_Filter], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Predictors, passing the object as the first parameter, and the string 'Predictors' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListPredictorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

