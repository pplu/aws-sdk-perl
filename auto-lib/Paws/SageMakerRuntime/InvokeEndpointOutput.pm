
package Paws::SageMakerRuntime::InvokeEndpointOutput;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  use Types::Standard qw/Str/;
  use Paws::SageMakerRuntime::Types qw//;
  has Body => (is => 'ro', isa => Str, required => 1);
  has ContentType => (is => 'ro', isa => Str);
  has CustomAttributes => (is => 'ro', isa => Str);
  has InvokedProductionVariant => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentType' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InvokedProductionVariant' => {
                                               'type' => 'Str'
                                             },
               'CustomAttributes' => {
                                       'type' => 'Str'
                                     },
               'Body' => {
                           'type' => 'Str'
                         }
             },
  'ParamInHeader' => {
                       'ContentType' => 'Content-Type',
                       'InvokedProductionVariant' => 'x-Amzn-Invoked-Production-Variant',
                       'CustomAttributes' => 'X-Amzn-SageMaker-Custom-Attributes'
                     },
  'IsRequired' => {
                    'Body' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMakerRuntime::InvokeEndpointOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Body => Str

Includes the inference provided by the model.

For information about the format of the response body, see Common Data
FormatsE<mdash>Inference
(http://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html).


=head2 ContentType => Str

The MIME type of the inference returned in the response body.


=head2 CustomAttributes => Str




=head2 InvokedProductionVariant => Str

Identifies the production variant that was invoked.


=head2 _request_id => Str


=cut

