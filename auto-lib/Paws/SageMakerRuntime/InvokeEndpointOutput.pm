
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
  'ParamInHeader' => {
                       'InvokedProductionVariant' => 'x-Amzn-Invoked-Production-Variant',
                       'CustomAttributes' => 'X-Amzn-SageMaker-Custom-Attributes',
                       'ContentType' => 'Content-Type'
                     },
  'IsRequired' => {
                    'Body' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'CustomAttributes' => {
                                       'type' => 'Str'
                                     },
               'InvokedProductionVariant' => {
                                               'type' => 'Str'
                                             },
               'Body' => {
                           'type' => 'Str'
                         }
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
(https://docs.aws.amazon.com/sagemaker/latest/dg/cdf-inference.html).


=head2 ContentType => Str

The MIME type of the inference returned in the response body.


=head2 CustomAttributes => Str

Provides additional information in the response about the inference
returned by a model hosted at an Amazon SageMaker endpoint. The
information is an opaque value that is forwarded verbatim. You could
use this value, for example, to return an ID received in the
C<CustomAttributes> header of a request or other metadata that a
service endpoint was programmed to produce. The value must consist of
no more than 1024 visible US-ASCII characters as specified in Section
3.3.6. Field Value Components
(https://tools.ietf.org/html/rfc7230#section-3.2.6) of the Hypertext
Transfer Protocol (HTTP/1.1). If the customer wants the custom
attribute returned, the model must set the custom attribute to be
included on the way back.

This feature is currently supported in the AWS SDKs but not in the
Amazon SageMaker Python SDK.


=head2 InvokedProductionVariant => Str

Identifies the production variant that was invoked.


=head2 _request_id => Str


=cut

