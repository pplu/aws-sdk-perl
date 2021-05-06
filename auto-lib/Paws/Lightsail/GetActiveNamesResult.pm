
package Paws::Lightsail::GetActiveNamesResult;
  use Moose;
  has ActiveNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'activeNames' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetActiveNamesResult

=head1 ATTRIBUTES


=head2 ActiveNames => ArrayRef[Str|Undef]

The list of active names returned by the get active names request.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
active names request.


=head2 _request_id => Str


=cut

1;