
package Paws::ApiGatewayV2::ExportApiResponse;
  use Moose;
  has Body => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'body');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Body');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::ExportApiResponse

=head1 ATTRIBUTES


=head2 Body => Str




=head2 _request_id => Str


=cut

