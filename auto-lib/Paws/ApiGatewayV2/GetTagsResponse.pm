
package Paws::ApiGatewayV2::GetTagsResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetTagsResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::ApiGatewayV2::__mapOf__string>




=head2 _request_id => Str


=cut

