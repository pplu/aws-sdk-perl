
package Paws::ApiGateway::SdkResponse;
  use Moo;  use MooX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  use Types::Standard qw/Str/;
  use Paws::ApiGateway::Types qw//;
  has Body => (is => 'ro', isa => Str);
  has ContentDisposition => (is => 'ro', isa => Str);
  has ContentType => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'ContentDisposition' => {
                                         'type' => 'Str'
                                       },
               'Body' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Body' => 'body'
                     },
  'ParamInHeader' => {
                       'ContentDisposition' => 'Content-Disposition',
                       'ContentType' => 'Content-Type'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::SdkResponse

=head1 ATTRIBUTES


=head2 Body => Str

The binary blob response to GetSdk, which contains the generated SDK.


=head2 ContentDisposition => Str

The content-disposition header value in the HTTP response.


=head2 ContentType => Str

The content-type header value in the HTTP response.


=head2 _request_id => Str


=cut

