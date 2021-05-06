
package Paws::Lightsail::GetBlueprintsResult;
  use Moose;
  has Blueprints => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Blueprint]', traits => ['NameInRequest'], request_name => 'blueprints' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBlueprintsResult

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[L<Paws::Lightsail::Blueprint>]

An array of key-value pairs that contains information about the
available blueprints.


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
blueprints request.


=head2 _request_id => Str


=cut

1;