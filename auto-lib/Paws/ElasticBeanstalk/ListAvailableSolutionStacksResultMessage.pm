
package Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage;
  use Moose;
  has SolutionStackDetails => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::SolutionStackDescription]');
  has SolutionStacks => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ListAvailableSolutionStacksResultMessage

=head1 ATTRIBUTES


=head2 SolutionStackDetails => ArrayRef[L<Paws::ElasticBeanstalk::SolutionStackDescription>]

A list of available solution stacks and their SolutionStackDescription.


=head2 SolutionStacks => ArrayRef[Str|Undef]

A list of available solution stacks.


=head2 _request_id => Str


=cut

