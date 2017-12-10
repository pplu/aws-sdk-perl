
package Paws::MobileHub::DescribeProjectResult;
  use Moose;
  has Details => (is => 'ro', isa => 'Paws::MobileHub::ProjectDetails', traits => ['NameInRequest'], request_name => 'details');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::DescribeProjectResult

=head1 ATTRIBUTES


=head2 Details => L<Paws::MobileHub::ProjectDetails>




=head2 _request_id => Str


=cut

