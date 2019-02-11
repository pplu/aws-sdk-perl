
package Paws::Lightsail::GetRelationalDatabaseLogEventsResult;
  use Moose;
  has NextBackwardToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextBackwardToken' );
  has NextForwardToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextForwardToken' );
  has ResourceLogEvents => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LogEvent]', traits => ['NameInRequest'], request_name => 'resourceLogEvents' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseLogEventsResult

=head1 ATTRIBUTES


=head2 NextBackwardToken => Str

A token used for advancing to the previous page of results from your
get relational database log events request.


=head2 NextForwardToken => Str

A token used for advancing to the next page of results from your get
relational database log events request.


=head2 ResourceLogEvents => ArrayRef[L<Paws::Lightsail::LogEvent>]

An object describing the result of your get relational database log
events request.


=head2 _request_id => Str


=cut

1;