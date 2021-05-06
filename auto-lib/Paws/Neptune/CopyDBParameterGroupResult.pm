
package Paws::Neptune::CopyDBParameterGroupResult;
  use Moose;
  has DBParameterGroup => (is => 'ro', isa => 'Paws::Neptune::DBParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::CopyDBParameterGroupResult

=head1 ATTRIBUTES


=head2 DBParameterGroup => L<Paws::Neptune::DBParameterGroup>




=head2 _request_id => Str


=cut

