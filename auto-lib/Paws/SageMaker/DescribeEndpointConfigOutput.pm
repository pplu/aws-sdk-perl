# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeEndpointConfigOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_ProductionVariant/;
  has CreationTime => (is => 'ro', isa => Str, required => 1);
  has EndpointConfigArn => (is => 'ro', isa => Str, required => 1);
  has EndpointConfigName => (is => 'ro', isa => Str, required => 1);
  has KmsKeyId => (is => 'ro', isa => Str);
  has ProductionVariants => (is => 'ro', isa => ArrayRef[SageMaker_ProductionVariant], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'EndpointConfigArn' => {
                                        'type' => 'Str'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'EndpointConfigName' => {
                                         'type' => 'Str'
                                       },
               'ProductionVariants' => {
                                         'class' => 'Paws::SageMaker::ProductionVariant',
                                         'type' => 'ArrayRef[SageMaker_ProductionVariant]'
                                       },
               'KmsKeyId' => {
                               'type' => 'Str'
                             }
             },
  'IsRequired' => {
                    'CreationTime' => 1,
                    'EndpointConfigArn' => 1,
                    'EndpointConfigName' => 1,
                    'ProductionVariants' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEndpointConfigOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

A timestamp that shows when the endpoint configuration was created.


=head2 B<REQUIRED> EndpointConfigArn => Str

The Amazon Resource Name (ARN) of the endpoint configuration.


=head2 B<REQUIRED> EndpointConfigName => Str

Name of the Amazon SageMaker endpoint configuration.


=head2 KmsKeyId => Str

AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it on
the ML storage volume attached to the instance.


=head2 B<REQUIRED> ProductionVariants => ArrayRef[SageMaker_ProductionVariant]

An array of C<ProductionVariant> objects, one for each model that you
want to host at this endpoint.


=head2 _request_id => Str


=cut

1;