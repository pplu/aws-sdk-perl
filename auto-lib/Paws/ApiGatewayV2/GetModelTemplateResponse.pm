
package Paws::ApiGatewayV2::GetModelTemplateResponse;
  use Moose;
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetModelTemplateResponse

=head1 ATTRIBUTES


=head2 Value => Str

The template value.


=head2 _request_id => Str


=cut

