
package Paws::Lightsail::GetRelationalDatabaseLogStreamsResult;
  use Moose;
  has LogStreams => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logStreams' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseLogStreamsResult

=head1 ATTRIBUTES


=head2 LogStreams => ArrayRef[Str|Undef]

An object describing the result of your get relational database log
streams request.


=head2 _request_id => Str


=cut

1;