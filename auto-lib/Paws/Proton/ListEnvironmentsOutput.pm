
package Paws::Proton::ListEnvironmentsOutput;
  use Moose;
  has Environments => (is => 'ro', isa => 'ArrayRef[Paws::Proton::EnvironmentSummary]', traits => ['NameInRequest'], request_name => 'environments' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListEnvironmentsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Environments => ArrayRef[L<Paws::Proton::EnvironmentSummary>]

An array of environment detail data summaries.


=head2 NextToken => Str

A token to indicate the location of the next environment in the array
of environments, after the current requested list of environments.


=head2 _request_id => Str


=cut

1;