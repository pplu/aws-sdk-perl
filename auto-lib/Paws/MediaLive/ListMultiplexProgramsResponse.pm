
package Paws::MediaLive::ListMultiplexProgramsResponse;
  use Moose;
  has MultiplexPrograms => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::MultiplexProgramSummary]', traits => ['NameInRequest'], request_name => 'multiplexPrograms');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListMultiplexProgramsResponse

=head1 ATTRIBUTES


=head2 MultiplexPrograms => ArrayRef[L<Paws::MediaLive::MultiplexProgramSummary>]

List of multiplex programs.


=head2 NextToken => Str

Token for the next ListMultiplexProgram request.


=head2 _request_id => Str


=cut

