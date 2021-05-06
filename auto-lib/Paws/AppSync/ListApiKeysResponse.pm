
package Paws::AppSync::ListApiKeysResponse;
  use Moose;
  has ApiKeys => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::ApiKey]', traits => ['NameInRequest'], request_name => 'apiKeys');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListApiKeysResponse

=head1 ATTRIBUTES


=head2 ApiKeys => ArrayRef[L<Paws::AppSync::ApiKey>]

The C<ApiKey> objects.


=head2 NextToken => Str

An identifier to be passed in the next request to this operation to
return the next set of items in the list.


=head2 _request_id => Str


=cut

