
package Paws::ApiGateway::ExportResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  has ContentDisposition => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Disposition');
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
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

