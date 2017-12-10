
package Paws::MediaLive::ListInputsResponse;
  use Moose;
  has Inputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::Input]', traits => ['NameInRequest'], request_name => 'inputs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::ListInputsResponse

=head1 ATTRIBUTES


=head2 Inputs => ArrayRef[L<Paws::MediaLive::Input>]




=head2 NextToken => Str




=head2 _request_id => Str


=cut

