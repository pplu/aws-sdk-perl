# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeAlgorithmOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SageMaker::Types qw/SageMaker_TrainingSpecification SageMaker_AlgorithmValidationSpecification SageMaker_AlgorithmStatusDetails SageMaker_InferenceSpecification/;
  has AlgorithmArn => (is => 'ro', isa => Str, required => 1);
  has AlgorithmDescription => (is => 'ro', isa => Str);
  has AlgorithmName => (is => 'ro', isa => Str, required => 1);
  has AlgorithmStatus => (is => 'ro', isa => Str, required => 1);
  has AlgorithmStatusDetails => (is => 'ro', isa => SageMaker_AlgorithmStatusDetails, required => 1);
  has CertifyForMarketplace => (is => 'ro', isa => Bool);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has InferenceSpecification => (is => 'ro', isa => SageMaker_InferenceSpecification);
  has ProductId => (is => 'ro', isa => Str);
  has TrainingSpecification => (is => 'ro', isa => SageMaker_TrainingSpecification, required => 1);
  has ValidationSpecification => (is => 'ro', isa => SageMaker_AlgorithmValidationSpecification);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CreationTime' => 1,
                    'AlgorithmArn' => 1,
                    'AlgorithmStatus' => 1,
                    'AlgorithmStatusDetails' => 1,
                    'TrainingSpecification' => 1,
                    'AlgorithmName' => 1
                  },
  'types' => {
               'AlgorithmArn' => {
                                   'type' => 'Str'
                                 },
               'CertifyForMarketplace' => {
                                            'type' => 'Bool'
                                          },
               'InferenceSpecification' => {
                                             'type' => 'SageMaker_InferenceSpecification',
                                             'class' => 'Paws::SageMaker::InferenceSpecification'
                                           },
               'AlgorithmStatusDetails' => {
                                             'class' => 'Paws::SageMaker::AlgorithmStatusDetails',
                                             'type' => 'SageMaker_AlgorithmStatusDetails'
                                           },
               'TrainingSpecification' => {
                                            'type' => 'SageMaker_TrainingSpecification',
                                            'class' => 'Paws::SageMaker::TrainingSpecification'
                                          },
               'AlgorithmName' => {
                                    'type' => 'Str'
                                  },
               'AlgorithmStatus' => {
                                      'type' => 'Str'
                                    },
               'ProductId' => {
                                'type' => 'Str'
                              },
               'ValidationSpecification' => {
                                              'class' => 'Paws::SageMaker::AlgorithmValidationSpecification',
                                              'type' => 'SageMaker_AlgorithmValidationSpecification'
                                            },
               'AlgorithmDescription' => {
                                           'type' => 'Str'
                                         },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeAlgorithmOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> AlgorithmArn => Str

The Amazon Resource Name (ARN) of the algorithm.


=head2 AlgorithmDescription => Str

A brief summary about the algorithm.


=head2 B<REQUIRED> AlgorithmName => Str

The name of the algorithm being described.


=head2 B<REQUIRED> AlgorithmStatus => Str

The current status of the algorithm.

Valid values are: C<"Pending">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 B<REQUIRED> AlgorithmStatusDetails => SageMaker_AlgorithmStatusDetails

Details about the current status of the algorithm.


=head2 CertifyForMarketplace => Bool

Whether the algorithm is certified to be listed in AWS Marketplace.


=head2 B<REQUIRED> CreationTime => Str

A timestamp specifying when the algorithm was created.


=head2 InferenceSpecification => SageMaker_InferenceSpecification

Details about inference jobs that the algorithm runs.


=head2 ProductId => Str

The product identifier of the algorithm.


=head2 B<REQUIRED> TrainingSpecification => SageMaker_TrainingSpecification

Details about training jobs run by this algorithm.


=head2 ValidationSpecification => SageMaker_AlgorithmValidationSpecification

Details about configurations for one or more training jobs that Amazon
SageMaker runs to test the algorithm.


=head2 _request_id => Str


=cut

1;