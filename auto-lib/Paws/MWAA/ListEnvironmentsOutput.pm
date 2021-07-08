
package Paws::MWAA::ListEnvironmentsOutput;
  use Moose;
  has Environments => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MWAA::ListEnvironmentsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Environments => ArrayRef[Str|Undef]

Returns the list of Amazon MWAA environments.


=head2 NextToken => Str

Retrieves the next page of the results.


=head2 _request_id => Str


=cut

