
package Paws::ApiGateway::ExportResponse;
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContentDisposition' => {
                                         'type' => 'Str'
                                       },
               'Body' => {
                           'type' => 'Str'
                         }
             },
  'ParamInHeader' => {
                       'ContentType' => 'Content-Type',
                       'ContentDisposition' => 'Content-Disposition'
                     },
  'NameInRequest' => {
                       'Body' => 'body'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::ExportResponse

=head1 ATTRIBUTES


=head2 Body => Str

The binary blob response to GetExport, which contains the export.


=head2 ContentDisposition => Str

The content-disposition header value in the HTTP response.


=head2 ContentType => Str

The content-type header value in the HTTP response. This will
correspond to a valid 'accept' type in the request.


=head2 _request_id => Str


=cut

