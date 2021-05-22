
package Paws::Lightsail::GetRelationalDatabaseBlueprintsResult;
  use Moose;
  has Blueprints => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::RelationalDatabaseBlueprint]', traits => ['NameInRequest'], request_name => 'blueprints' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseBlueprintsResult

=head1 ATTRIBUTES


=head2 Blueprints => ArrayRef[L<Paws::Lightsail::RelationalDatabaseBlueprint>]

An object describing the result of your get relational database
blueprints request.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another
C<GetRelationalDatabaseBlueprints> request and specify the next page
token using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;