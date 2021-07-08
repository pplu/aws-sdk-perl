package Paws::Forecast;
  use Moose;
  sub service { 'forecast' }
  sub signing_name { 'forecast' }
  sub version { '2018-06-26' }
  sub target_prefix { 'AmazonForecast' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
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
  sub CreatePredictorBacktestExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::CreatePredictorBacktestExportJob', @_);
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
  sub DeletePredictorBacktestExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeletePredictorBacktestExportJob', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceTree {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DeleteResourceTree', @_);
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
  sub DescribePredictorBacktestExportJob {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::DescribePredictorBacktestExportJob', @_);
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
  sub ListPredictorBacktestExportJobs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListPredictorBacktestExportJobs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPredictors {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListPredictors', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::StopResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Forecast::UntagResource', @_);
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
  sub ListAllPredictorBacktestExportJobs {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListPredictorBacktestExportJobs(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListPredictorBacktestExportJobs(@_, NextToken => $next_result->NextToken);
        push @{ $result->PredictorBacktestExportJobs }, @{ $next_result->PredictorBacktestExportJobs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PredictorBacktestExportJobs') foreach (@{ $result->PredictorBacktestExportJobs });
        $result = $self->ListPredictorBacktestExportJobs(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PredictorBacktestExportJobs') foreach (@{ $result->PredictorBacktestExportJobs });
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


  sub operations { qw/CreateDataset CreateDatasetGroup CreateDatasetImportJob CreateForecast CreateForecastExportJob CreatePredictor CreatePredictorBacktestExportJob DeleteDataset DeleteDatasetGroup DeleteDatasetImportJob DeleteForecast DeleteForecastExportJob DeletePredictor DeletePredictorBacktestExportJob DeleteResourceTree DescribeDataset DescribeDatasetGroup DescribeDatasetImportJob DescribeForecast DescribeForecastExportJob DescribePredictor DescribePredictorBacktestExportJob GetAccuracyMetrics ListDatasetGroups ListDatasetImportJobs ListDatasets ListForecastExportJobs ListForecasts ListPredictorBacktestExportJobs ListPredictors ListTagsForResource StopResource TagResource UntagResource UpdateDatasetGroup / }

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

=item Schema => L<Paws::Forecast::Schema>

=item [DataFrequency => Str]

=item [EncryptionConfig => L<Paws::Forecast::EncryptionConfig>]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDataset>

Returns: a L<Paws::Forecast::CreateDatasetResponse> instance

Creates an Amazon Forecast dataset. The information about the dataset
that you provide helps Forecast understand how to consume the data for
model training. This includes the following:

=over

=item *

I<C<DataFrequency> > - How frequently your historical time-series data
is collected.

=item *

I<C<Domain> > and I< C<DatasetType> > - Each dataset has an associated
dataset domain and a type within the domain. Amazon Forecast provides a
list of predefined domains and types within each domain. For each
unique dataset domain and type within the domain, Amazon Forecast
requires your data to include a minimum set of predefined fields.

=item *

I<C<Schema> > - A schema specifies the fields in the dataset, including
the field name and data type.

=back

After creating a dataset, you import your training data into it and add
the dataset to a dataset group. You use the dataset group to create a
predictor. For more information, see howitworks-datasets-groups.

To get a list of all your datasets, use the ListDatasets operation.

For example Forecast datasets, see the Amazon Forecast Sample GitHub
repository (https://github.com/aws-samples/amazon-forecast-samples).

The C<Status> of a dataset must be C<ACTIVE> before you can import
training data. Use the DescribeDataset operation to get the status.


=head2 CreateDatasetGroup

=over

=item DatasetGroupName => Str

=item Domain => Str

=item [DatasetArns => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDatasetGroup>

Returns: a L<Paws::Forecast::CreateDatasetGroupResponse> instance

Creates a dataset group, which holds a collection of related datasets.
You can add datasets to the dataset group when you create the dataset
group, or later by using the UpdateDatasetGroup operation.

After creating a dataset group and adding datasets, you use the dataset
group when you create a predictor. For more information, see
howitworks-datasets-groups.

To get a list of all your datasets groups, use the ListDatasetGroups
operation.

The C<Status> of a dataset group must be C<ACTIVE> before you can use
the dataset group to create a predictor. To get the status, use the
DescribeDatasetGroup operation.


=head2 CreateDatasetImportJob

=over

=item DatasetArn => Str

=item DatasetImportJobName => Str

=item DataSource => L<Paws::Forecast::DataSource>

=item [GeolocationFormat => Str]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TimestampFormat => Str]

=item [TimeZone => Str]

=item [UseGeolocationForTimeZone => Bool]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateDatasetImportJob>

Returns: a L<Paws::Forecast::CreateDatasetImportJobResponse> instance

Imports your training data to an Amazon Forecast dataset. You provide
the location of your training data in an Amazon Simple Storage Service
(Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
that you want to import the data to.

You must specify a DataSource object that includes an AWS Identity and
Access Management (IAM) role that Amazon Forecast can assume to access
the data, as Amazon Forecast makes a copy of your data and processes it
in an internal AWS system. For more information, see
aws-forecast-iam-roles.

The training data must be in CSV format. The delimiter must be a comma
(,).

You can specify the path to a specific CSV file, the S3 bucket, or to a
folder in the S3 bucket. For the latter two cases, Amazon Forecast
imports all files up to the limit of 10,000 files.

Because dataset imports are not aggregated, your most recent dataset
import is the one that is used when training a predictor or generating
a forecast. Make sure that your most recent dataset import contains all
of the data you want to model off of, and not just the new data
collected since the previous import.

To get a list of all your dataset import jobs, filtered by specified
criteria, use the ListDatasetImportJobs operation.


=head2 CreateForecast

=over

=item ForecastName => Str

=item PredictorArn => Str

=item [ForecastTypes => ArrayRef[Str|Undef]]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateForecast>

Returns: a L<Paws::Forecast::CreateForecastResponse> instance

Creates a forecast for each item in the C<TARGET_TIME_SERIES> dataset
that was used to train the predictor. This is known as inference. To
retrieve the forecast for a single item at low latency, use the
operation. To export the complete forecast into your Amazon Simple
Storage Service (Amazon S3) bucket, use the CreateForecastExportJob
operation.

The range of the forecast is determined by the C<ForecastHorizon>
value, which you specify in the CreatePredictor request. When you query
a forecast, you can request a specific date range within the forecast.

To get a list of all your forecasts, use the ListForecasts operation.

The forecasts generated by Amazon Forecast are in the same time zone as
the dataset that was used to create the predictor.

For more information, see howitworks-forecast.

The C<Status> of the forecast must be C<ACTIVE> before you can query or
export the forecast. Use the DescribeForecast operation to get the
status.


=head2 CreateForecastExportJob

=over

=item Destination => L<Paws::Forecast::DataDestination>

=item ForecastArn => Str

=item ForecastExportJobName => Str

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreateForecastExportJob>

Returns: a L<Paws::Forecast::CreateForecastExportJobResponse> instance

Exports a forecast created by the CreateForecast operation to your
Amazon Simple Storage Service (Amazon S3) bucket. The forecast file
name will match the following conventions:

E<lt>ForecastExportJobNameE<gt>_E<lt>ExportTimestampE<gt>_E<lt>PartNumberE<gt>

where the E<lt>ExportTimestampE<gt> component is in Java
SimpleDateFormat (yyyy-MM-ddTHH-mm-ssZ).

You must specify a DataDestination object that includes an AWS Identity
and Access Management (IAM) role that Amazon Forecast can assume to
access the Amazon S3 bucket. For more information, see
aws-forecast-iam-roles.

For more information, see howitworks-forecast.

To get a list of all your forecast export jobs, use the
ListForecastExportJobs operation.

The C<Status> of the forecast export job must be C<ACTIVE> before you
can access the forecast in your Amazon S3 bucket. To get the status,
use the DescribeForecastExportJob operation.


=head2 CreatePredictor

=over

=item FeaturizationConfig => L<Paws::Forecast::FeaturizationConfig>

=item ForecastHorizon => Int

=item InputDataConfig => L<Paws::Forecast::InputDataConfig>

=item PredictorName => Str

=item [AlgorithmArn => Str]

=item [AutoMLOverrideStrategy => Str]

=item [EncryptionConfig => L<Paws::Forecast::EncryptionConfig>]

=item [EvaluationParameters => L<Paws::Forecast::EvaluationParameters>]

=item [ForecastTypes => ArrayRef[Str|Undef]]

=item [HPOConfig => L<Paws::Forecast::HyperParameterTuningJobConfig>]

=item [PerformAutoML => Bool]

=item [PerformHPO => Bool]

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]

=item [TrainingParameters => L<Paws::Forecast::TrainingParameters>]


=back

Each argument is described in detail in: L<Paws::Forecast::CreatePredictor>

Returns: a L<Paws::Forecast::CreatePredictorResponse> instance

Creates an Amazon Forecast predictor.

In the request, provide a dataset group and either specify an algorithm
or let Amazon Forecast choose an algorithm for you using AutoML. If you
specify an algorithm, you also can override algorithm-specific
hyperparameters.

Amazon Forecast uses the algorithm to train a predictor using the
latest version of the datasets in the specified dataset group. You can
then generate a forecast using the CreateForecast operation.

To see the evaluation metrics, use the GetAccuracyMetrics operation.

You can specify a featurization configuration to fill and aggregate the
data fields in the C<TARGET_TIME_SERIES> dataset to improve model
training. For more information, see FeaturizationConfig.

For RELATED_TIME_SERIES datasets, C<CreatePredictor> verifies that the
C<DataFrequency> specified when the dataset was created matches the
C<ForecastFrequency>. TARGET_TIME_SERIES datasets don't have this
restriction. Amazon Forecast also verifies the delimiter and timestamp
format. For more information, see howitworks-datasets-groups.

By default, predictors are trained and evaluated at the 0.1 (P10), 0.5
(P50), and 0.9 (P90) quantiles. You can choose custom forecast types to
train and evaluate your predictor by setting the C<ForecastTypes>.

B<AutoML>

If you want Amazon Forecast to evaluate each algorithm and choose the
one that minimizes the C<objective function>, set C<PerformAutoML> to
C<true>. The C<objective function> is defined as the mean of the
weighted losses over the forecast types. By default, these are the p10,
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

To get a list of all of your predictors, use the ListPredictors
operation.

Before you can use the predictor to create a forecast, the C<Status> of
the predictor must be C<ACTIVE>, signifying that training has
completed. To get the status, use the DescribePredictor operation.


=head2 CreatePredictorBacktestExportJob

=over

=item Destination => L<Paws::Forecast::DataDestination>

=item PredictorArn => Str

=item PredictorBacktestExportJobName => Str

=item [Tags => ArrayRef[L<Paws::Forecast::Tag>]]


=back

Each argument is described in detail in: L<Paws::Forecast::CreatePredictorBacktestExportJob>

Returns: a L<Paws::Forecast::CreatePredictorBacktestExportJobResponse> instance

Exports backtest forecasts and accuracy metrics generated by the
CreatePredictor operation. Two folders containing CSV files are
exported to your specified S3 bucket.

The export file names will match the following conventions:

C<E<lt>ExportJobNameE<gt>_E<lt>ExportTimestampE<gt>_E<lt>PartNumberE<gt>.csv>

The E<lt>ExportTimestampE<gt> component is in Java SimpleDate format
(yyyy-MM-ddTHH-mm-ssZ).

You must specify a DataDestination object that includes an Amazon S3
bucket and an AWS Identity and Access Management (IAM) role that Amazon
Forecast can assume to access the Amazon S3 bucket. For more
information, see aws-forecast-iam-roles.

The C<Status> of the export job must be C<ACTIVE> before you can access
the export in your Amazon S3 bucket. To get the status, use the
DescribePredictorBacktestExportJob operation.


=head2 DeleteDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDataset>

Returns: nothing

Deletes an Amazon Forecast dataset that was created using the
CreateDataset operation. You can only delete datasets that have a
status of C<ACTIVE> or C<CREATE_FAILED>. To get the status use the
DescribeDataset operation.

Forecast does not automatically update any dataset groups that contain
the deleted dataset. In order to update the dataset group, use the
operation, omitting the deleted dataset's ARN.


=head2 DeleteDatasetGroup

=over

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDatasetGroup>

Returns: nothing

Deletes a dataset group created using the CreateDatasetGroup operation.
You can only delete dataset groups that have a status of C<ACTIVE>,
C<CREATE_FAILED>, or C<UPDATE_FAILED>. To get the status, use the
DescribeDatasetGroup operation.

This operation deletes only the dataset group, not the datasets in the
group.


=head2 DeleteDatasetImportJob

=over

=item DatasetImportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteDatasetImportJob>

Returns: nothing

Deletes a dataset import job created using the CreateDatasetImportJob
operation. You can delete only dataset import jobs that have a status
of C<ACTIVE> or C<CREATE_FAILED>. To get the status, use the
DescribeDatasetImportJob operation.


=head2 DeleteForecast

=over

=item ForecastArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteForecast>

Returns: nothing

Deletes a forecast created using the CreateForecast operation. You can
delete only forecasts that have a status of C<ACTIVE> or
C<CREATE_FAILED>. To get the status, use the DescribeForecast
operation.

You can't delete a forecast while it is being exported. After a
forecast is deleted, you can no longer query the forecast.


=head2 DeleteForecastExportJob

=over

=item ForecastExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteForecastExportJob>

Returns: nothing

Deletes a forecast export job created using the CreateForecastExportJob
operation. You can delete only export jobs that have a status of
C<ACTIVE> or C<CREATE_FAILED>. To get the status, use the
DescribeForecastExportJob operation.


=head2 DeletePredictor

=over

=item PredictorArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeletePredictor>

Returns: nothing

Deletes a predictor created using the CreatePredictor operation. You
can delete only predictor that have a status of C<ACTIVE> or
C<CREATE_FAILED>. To get the status, use the DescribePredictor
operation.


=head2 DeletePredictorBacktestExportJob

=over

=item PredictorBacktestExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeletePredictorBacktestExportJob>

Returns: nothing

Deletes a predictor backtest export job.


=head2 DeleteResourceTree

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DeleteResourceTree>

Returns: nothing

Deletes an entire resource tree. This operation will delete the parent
resource and its child resources.

Child resources are resources that were created from another resource.
For example, when a forecast is generated from a predictor, the
forecast is the child resource and the predictor is the parent
resource.

Amazon Forecast resources possess the following parent-child resource
hierarchies:

=over

=item *

B<Dataset>: dataset import jobs

=item *

B<Dataset Group>: predictors, predictor backtest export jobs,
forecasts, forecast export jobs

=item *

B<Predictor>: predictor backtest export jobs, forecasts, forecast
export jobs

=item *

B<Forecast>: forecast export jobs

=back

C<DeleteResourceTree> will only delete Amazon Forecast resources, and
will not delete datasets or exported files stored in Amazon S3.


=head2 DescribeDataset

=over

=item DatasetArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribeDataset>

Returns: a L<Paws::Forecast::DescribeDatasetResponse> instance

Describes an Amazon Forecast dataset created using the CreateDataset
operation.

In addition to listing the parameters specified in the C<CreateDataset>
request, this operation includes the following dataset properties:

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

In addition to listing the parameters provided in the
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

In addition to listing the parameters provided in the
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

In addition to listing the properties provided in the C<CreateForecast>
request, this operation lists the following properties:

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
C<CreateForecastExportJob> request, this operation lists the following
properties:

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

In addition to listing the properties provided in the
C<CreatePredictor> request, this operation lists the following
properties:

=over

=item *

C<DatasetImportJobArns> - The dataset import jobs used to import
training data.

=item *

C<AutoMLAlgorithmArns> - If AutoML is performed, the algorithms that
were evaluated.

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> - If an error occurred, information about the error.

=back



=head2 DescribePredictorBacktestExportJob

=over

=item PredictorBacktestExportJobArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::DescribePredictorBacktestExportJob>

Returns: a L<Paws::Forecast::DescribePredictorBacktestExportJobResponse> instance

Describes a predictor backtest export job created using the
CreatePredictorBacktestExportJob operation.

In addition to listing the properties provided by the user in the
C<CreatePredictorBacktestExportJob> request, this operation lists the
following properties:

=over

=item *

C<CreationTime>

=item *

C<LastModificationTime>

=item *

C<Status>

=item *

C<Message> (if an error occurred)

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
forecast. For more information, see Predictor Metrics
(https://docs.aws.amazon.com/forecast/latest/dg/metrics.html).

This operation generates metrics for each backtest window that was
evaluated. The number of backtest windows (C<NumberOfBacktestWindows>)
is specified using the EvaluationParameters object, which is optionally
included in the C<CreatePredictor> request. If
C<NumberOfBacktestWindows> isn't specified, the number defaults to one.

The parameters of the C<filling> method determine which items
contribute to the metrics. If you want all items to contribute, specify
C<zero>. If you want only those items that have complete data in the
range being evaluated to contribute, specify C<nan>. For more
information, see FeaturizationMethod.

Before you can get accuracy metrics, the C<Status> of the predictor
must be C<ACTIVE>, signifying that training has completed. To get the
status, use the DescribePredictor operation.


=head2 ListDatasetGroups

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasetGroups>

Returns: a L<Paws::Forecast::ListDatasetGroupsResponse> instance

Returns a list of dataset groups created using the CreateDatasetGroup
operation. For each dataset group, this operation returns a summary of
its properties, including its Amazon Resource Name (ARN). You can
retrieve the complete set of properties by using the dataset group ARN
with the DescribeDatasetGroup operation.


=head2 ListDatasetImportJobs

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListDatasetImportJobs>

Returns: a L<Paws::Forecast::ListDatasetImportJobsResponse> instance

Returns a list of dataset import jobs created using the
CreateDatasetImportJob operation. For each import job, this operation
returns a summary of its properties, including its Amazon Resource Name
(ARN). You can retrieve the complete set of properties by using the ARN
with the DescribeDatasetImportJob operation. You can filter the list by
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
Resource Name (ARN), is returned. To retrieve the complete set of
properties, use the ARN with the DescribeDataset operation.


=head2 ListForecastExportJobs

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListForecastExportJobs>

Returns: a L<Paws::Forecast::ListForecastExportJobsResponse> instance

Returns a list of forecast export jobs created using the
CreateForecastExportJob operation. For each forecast export job, this
operation returns a summary of its properties, including its Amazon
Resource Name (ARN). To retrieve the complete set of properties, use
the ARN with the DescribeForecastExportJob operation. You can filter
the list using an array of Filter objects.


=head2 ListForecasts

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListForecasts>

Returns: a L<Paws::Forecast::ListForecastsResponse> instance

Returns a list of forecasts created using the CreateForecast operation.
For each forecast, this operation returns a summary of its properties,
including its Amazon Resource Name (ARN). To retrieve the complete set
of properties, specify the ARN with the DescribeForecast operation. You
can filter the list using an array of Filter objects.


=head2 ListPredictorBacktestExportJobs

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListPredictorBacktestExportJobs>

Returns: a L<Paws::Forecast::ListPredictorBacktestExportJobsResponse> instance

Returns a list of predictor backtest export jobs created using the
CreatePredictorBacktestExportJob operation. This operation returns a
summary for each backtest export job. You can filter the list using an
array of Filter objects.

To retrieve the complete set of properties for a particular backtest
export job, use the ARN with the DescribePredictorBacktestExportJob
operation.


=head2 ListPredictors

=over

=item [Filters => ArrayRef[L<Paws::Forecast::Filter>]]

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Forecast::ListPredictors>

Returns: a L<Paws::Forecast::ListPredictorsResponse> instance

Returns a list of predictors created using the CreatePredictor
operation. For each predictor, this operation returns a summary of its
properties, including its Amazon Resource Name (ARN). You can retrieve
the complete set of properties by using the ARN with the
DescribePredictor operation. You can filter the list using an array of
Filter objects.


=head2 ListTagsForResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::ListTagsForResource>

Returns: a L<Paws::Forecast::ListTagsForResourceResponse> instance

Lists the tags for an Amazon Forecast resource.


=head2 StopResource

=over

=item ResourceArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::StopResource>

Returns: nothing

Stops a resource.

The resource undergoes the following states: C<CREATE_STOPPING> and
C<CREATE_STOPPED>. You cannot resume a resource once it has been
stopped.

This operation can be applied to the following resources (and their
corresponding child resources):

=over

=item *

Dataset Import Job

=item *

Predictor Job

=item *

Forecast Job

=item *

Forecast Export Job

=item *

Predictor Backtest Export Job

=back



=head2 TagResource

=over

=item ResourceArn => Str

=item Tags => ArrayRef[L<Paws::Forecast::Tag>]


=back

Each argument is described in detail in: L<Paws::Forecast::TagResource>

Returns: a L<Paws::Forecast::TagResourceResponse> instance

Associates the specified tags to a resource with the specified
C<resourceArn>. If existing tags on a resource are not specified in the
request parameters, they are not changed. When a resource is deleted,
the tags associated with that resource are also deleted.


=head2 UntagResource

=over

=item ResourceArn => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Forecast::UntagResource>

Returns: a L<Paws::Forecast::UntagResourceResponse> instance

Deletes the specified tags from a resource.


=head2 UpdateDatasetGroup

=over

=item DatasetArns => ArrayRef[Str|Undef]

=item DatasetGroupArn => Str


=back

Each argument is described in detail in: L<Paws::Forecast::UpdateDatasetGroup>

Returns: a L<Paws::Forecast::UpdateDatasetGroupResponse> instance

Replaces the datasets in a dataset group with the specified datasets.

The C<Status> of the dataset group must be C<ACTIVE> before you can use
the dataset group to create a predictor. Use the DescribeDatasetGroup
operation to get the status.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllDatasetGroups(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetGroups([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetGroups, passing the object as the first parameter, and the string 'DatasetGroups' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetGroupsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasetImportJobs(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllDatasetImportJobs([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DatasetImportJobs, passing the object as the first parameter, and the string 'DatasetImportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetImportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDatasets(sub { },[MaxResults => Int, NextToken => Str])

=head2 ListAllDatasets([MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Datasets, passing the object as the first parameter, and the string 'Datasets' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListDatasetsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllForecastExportJobs(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllForecastExportJobs([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ForecastExportJobs, passing the object as the first parameter, and the string 'ForecastExportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListForecastExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllForecasts(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllForecasts([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Forecasts, passing the object as the first parameter, and the string 'Forecasts' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListForecastsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPredictorBacktestExportJobs(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllPredictorBacktestExportJobs([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PredictorBacktestExportJobs, passing the object as the first parameter, and the string 'PredictorBacktestExportJobs' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListPredictorBacktestExportJobsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllPredictors(sub { },[Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])

=head2 ListAllPredictors([Filters => ArrayRef[L<Paws::Forecast::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Predictors, passing the object as the first parameter, and the string 'Predictors' as the second parameter 

If not, it will return a a L<Paws::Forecast::ListPredictorsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

