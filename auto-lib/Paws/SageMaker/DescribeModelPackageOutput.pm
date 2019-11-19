# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeModelPackageOutput;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SageMaker::Types qw/SageMaker_SourceAlgorithmSpecification SageMaker_ModelPackageValidationSpecification SageMaker_ModelPackageStatusDetails SageMaker_InferenceSpecification/;
  has CertifyForMarketplace => (is => 'ro', isa => Bool);
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has InferenceSpecification => (is => 'ro', isa => SageMaker_InferenceSpecification);
  has ModelPackageArn => (is => 'ro', isa => Str, required => 1);
  has ModelPackageDescription => (is => 'ro', isa => Str);
  has ModelPackageName => (is => 'ro', isa => Str, required => 1);
  has ModelPackageStatus => (is => 'ro', isa => Str, required => 1);
  has ModelPackageStatusDetails => (is => 'ro', isa => SageMaker_ModelPackageStatusDetails, required => 1);
  has SourceAlgorithmSpecification => (is => 'ro', isa => SageMaker_SourceAlgorithmSpecification);
  has ValidationSpecification => (is => 'ro', isa => SageMaker_ModelPackageValidationSpecification);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ModelPackageName' => 1,
                    'ModelPackageArn' => 1,
                    'ModelPackageStatus' => 1,
                    'CreationTime' => 1,
                    'ModelPackageStatusDetails' => 1
                  },
  'types' => {
               'ModelPackageStatusDetails' => {
                                                'class' => 'Paws::SageMaker::ModelPackageStatusDetails',
                                                'type' => 'SageMaker_ModelPackageStatusDetails'
                                              },
               'ModelPackageArn' => {
                                      'type' => 'Str'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ModelPackageName' => {
                                       'type' => 'Str'
                                     },
               'InferenceSpecification' => {
                                             'type' => 'SageMaker_InferenceSpecification',
                                             'class' => 'Paws::SageMaker::InferenceSpecification'
                                           },
               'ModelPackageDescription' => {
                                              'type' => 'Str'
                                            },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ModelPackageStatus' => {
                                         'type' => 'Str'
                                       },
               'CertifyForMarketplace' => {
                                            'type' => 'Bool'
                                          },
               'SourceAlgorithmSpecification' => {
                                                   'type' => 'SageMaker_SourceAlgorithmSpecification',
                                                   'class' => 'Paws::SageMaker::SourceAlgorithmSpecification'
                                                 },
               'ValidationSpecification' => {
                                              'class' => 'Paws::SageMaker::ModelPackageValidationSpecification',
                                              'type' => 'SageMaker_ModelPackageValidationSpecification'
                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeModelPackageOutput

=head1 ATTRIBUTES


=head2 CertifyForMarketplace => Bool

Whether the model package is certified for listing on AWS Marketplace.


=head2 B<REQUIRED> CreationTime => Str

A timestamp specifying when the model package was created.


=head2 InferenceSpecification => SageMaker_InferenceSpecification

Details about inference jobs that can be run with models based on this
model package.


=head2 B<REQUIRED> ModelPackageArn => Str

The Amazon Resource Name (ARN) of the model package.


=head2 ModelPackageDescription => Str

A brief summary of the model package.


=head2 B<REQUIRED> ModelPackageName => Str

The name of the model package being described.


=head2 B<REQUIRED> ModelPackageStatus => Str

The current status of the model package.

Valid values are: C<"Pending">, C<"InProgress">, C<"Completed">, C<"Failed">, C<"Deleting">
=head2 B<REQUIRED> ModelPackageStatusDetails => SageMaker_ModelPackageStatusDetails

Details about the current status of the model package.


=head2 SourceAlgorithmSpecification => SageMaker_SourceAlgorithmSpecification

Details about the algorithm that was used to create the model package.


=head2 ValidationSpecification => SageMaker_ModelPackageValidationSpecification

Configurations for one or more transform jobs that Amazon SageMaker
runs to test the model package.


=head2 _request_id => Str


=cut

1;