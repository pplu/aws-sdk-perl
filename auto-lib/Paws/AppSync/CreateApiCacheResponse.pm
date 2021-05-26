
package Paws::AppSync::CreateApiCacheResponse;
  use Moose;
  has ApiCache => (is => 'ro', isa => 'Paws::AppSync::ApiCache', traits => ['NameInRequest'], request_name => 'apiCache');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateApiCacheResponse

=head1 ATTRIBUTES


=head2 ApiCache => L<Paws::AppSync::ApiCache>

The C<ApiCache> object.


=head2 _request_id => Str


=cut

