
package Paws::ApiGatewayV2::GetTagsResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::ApiGatewayV2::Tags', traits => ['NameInRequest'], request_name => 'tags', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::GetTagsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Tags => L<Paws::ApiGatewayV2::Tags>




=head2 _request_id => Str


=cut

