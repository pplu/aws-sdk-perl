
package Paws::Robomaker::BatchDeleteWorldsResponse;
  use Moose;
  has UnprocessedWorlds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'unprocessedWorlds');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::BatchDeleteWorldsResponse

=head1 ATTRIBUTES


=head2 UnprocessedWorlds => ArrayRef[Str|Undef]

A list of unprocessed worlds associated with the call. These worlds
were not deleted.


=head2 _request_id => Str


=cut

