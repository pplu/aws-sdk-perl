
package Paws::Lightsail::UpdateRelationalDatabaseParametersResult;
  use Moose;
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::Operation]', traits => ['NameInRequest'], request_name => 'operations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateRelationalDatabaseParametersResult

=head1 ATTRIBUTES


=head2 Operations => ArrayRef[L<Paws::Lightsail::Operation>]

An object describing the result of your update relational database
parameters request.


=head2 _request_id => Str


=cut

1;