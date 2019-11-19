# Generated from json/callresult_class.tt

package Paws::Forecast::DescribePredictorResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int Bool/;
  use Paws::Forecast::Types qw/Forecast_HyperParameterTuningJobConfig Forecast_FeaturizationConfig Forecast_TrainingParameters Forecast_InputDataConfig Forecast_EvaluationParameters Forecast_EncryptionConfig/;
  has AlgorithmArn => (is => 'ro', isa => Str);
  has AutoMLAlgorithmArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has CreationTime => (is => 'ro', isa => Str);
  has DatasetImportJobArns => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has EncryptionConfig => (is => 'ro', isa => Forecast_EncryptionConfig);
  has EvaluationParameters => (is => 'ro', isa => Forecast_EvaluationParameters);
  has FeaturizationConfig => (is => 'ro', isa => Forecast_FeaturizationConfig);
  has ForecastHorizon => (is => 'ro', isa => Int);
  has HPOConfig => (is => 'ro', isa => Forecast_HyperParameterTuningJobConfig);
  has InputDataConfig => (is => 'ro', isa => Forecast_InputDataConfig);
  has LastModificationTime => (is => 'ro', isa => Str);
  has Message => (is => 'ro', isa => Str);
  has PerformAutoML => (is => 'ro', isa => Bool);
  has PerformHPO => (is => 'ro', isa => Bool);
  has PredictorArn => (is => 'ro', isa => Str);
  has PredictorName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has TrainingParameters => (is => 'ro', isa => Forecast_TrainingParameters);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EncryptionConfig' => {
                                       'class' => 'Paws::Forecast::EncryptionConfig',
                                       'type' => 'Forecast_EncryptionConfig'
                                     },
               'HPOConfig' => {
                                'type' => 'Forecast_HyperParameterTuningJobConfig',
                                'class' => 'Paws::Forecast::HyperParameterTuningJobConfig'
                              },
               'LastModificationTime' => {
                                           'type' => 'Str'
                                         },
               'InputDataConfig' => {
                                      'type' => 'Forecast_InputDataConfig',
                                      'class' => 'Paws::Forecast::InputDataConfig'
                                    },
               'PredictorName' => {
                                    'type' => 'Str'
                                  },
               'DatasetImportJobArns' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'TrainingParameters' => {
                                         'class' => 'Paws::Forecast::TrainingParameters',
                                         'type' => 'Forecast_TrainingParameters'
                                       },
               'AlgorithmArn' => {
                                   'type' => 'Str'
                                 },
               'PredictorArn' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'Message' => {
                              'type' => 'Str'
                            },
               'FeaturizationConfig' => {
                                          'class' => 'Paws::Forecast::FeaturizationConfig',
                                          'type' => 'Forecast_FeaturizationConfig'
                                        },
               'ForecastHorizon' => {
                                      'type' => 'Int'
                                    },
               'EvaluationParameters' => {
                                           'class' => 'Paws::Forecast::EvaluationParameters',
                                           'type' => 'Forecast_EvaluationParameters'
                                         },
               'PerformAutoML' => {
                                    'type' => 'Bool'
                                  },
               'AutoMLAlgorithmArns' => {
                                          'type' => 'ArrayRef[Str|Undef]'
                                        },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'PerformHPO' => {
                                 'type' => 'Bool'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribePredictorResponse

=head1 ATTRIBUTES


=head2 AlgorithmArn => Str

The Amazon Resource Name (ARN) of the algorithm used for model
training.


=head2 AutoMLAlgorithmArns => ArrayRef[Str|Undef]

When C<PerformAutoML> is specified, the ARN of the chosen algorithm.


=head2 CreationTime => Str

When the model training task was created.


=head2 DatasetImportJobArns => ArrayRef[Str|Undef]

An array of ARNs of the dataset import jobs used to import training
data for the predictor.


=head2 EncryptionConfig => Forecast_EncryptionConfig

An AWS Key Management Service (KMS) key and the AWS Identity and Access
Management (IAM) role that Amazon Forecast can assume to access the
key.


=head2 EvaluationParameters => Forecast_EvaluationParameters

Used to override the default evaluation parameters of the specified
algorithm. Amazon Forecast evaluates a predictor by splitting a dataset
into training data and testing data. The evaluation parameters define
how to perform the split and the number of iterations.


=head2 FeaturizationConfig => Forecast_FeaturizationConfig

The featurization configuration.


=head2 ForecastHorizon => Int

The number of time-steps of the forecast. The forecast horizon is also
called the prediction length.


=head2 HPOConfig => Forecast_HyperParameterTuningJobConfig

The hyperparameter override values for the algorithm.


=head2 InputDataConfig => Forecast_InputDataConfig

Describes the dataset group that contains the data to use to train the
predictor.


=head2 LastModificationTime => Str

Initially, the same as C<CreationTime> (status is C<CREATE_PENDING>).
Updated when training starts (status changed to C<CREATE_IN_PROGRESS>),
and when training is complete (status changed to C<ACTIVE>) or fails
(status changed to C<CREATE_FAILED>).


=head2 Message => Str

If an error occurred, an informational message about the error.


=head2 PerformAutoML => Bool

Whether the predictor is set to perform AutoML.


=head2 PerformHPO => Bool

Whether the predictor is set to perform HPO.


=head2 PredictorArn => Str

The ARN of the predictor.


=head2 PredictorName => Str

The name of the predictor.


=head2 Status => Str

The status of the predictor. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=item *

C<UPDATE_PENDING>, C<UPDATE_IN_PROGRESS>, C<UPDATE_FAILED>

=back

The C<Status> of the predictor must be C<ACTIVE> before using the
predictor to create a forecast.


=head2 TrainingParameters => Forecast_TrainingParameters

The training parameters to override for model training. The parameters
that you can override are listed in the individual algorithms in
aws-forecast-choosing-recipes.


=head2 _request_id => Str


=cut

1;