
package Paws::Lightsail::GetRelationalDatabaseParametersResult;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::RelationalDatabaseParameter]', traits => ['NameInRequest'], request_name => 'parameters' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseParametersResult

=head1 ATTRIBUTES


=head2 NextPageToken => Str

A token used for advancing to the next page of results from your get
static IPs request.


=head2 Parameters => ArrayRef[L<Paws::Lightsail::RelationalDatabaseParameter>]

An object describing the result of your get relational database
parameters request.


=head2 _request_id => Str


=cut

1;