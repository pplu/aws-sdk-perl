
package Paws::MobileHub::CreateProjectResult;
  use Moose;
  has Details => (is => 'ro', isa => 'Paws::MobileHub::ProjectDetails', traits => ['NameInRequest'], request_name => 'details');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::CreateProjectResult

=head1 ATTRIBUTES


=head2 Details => L<Paws::MobileHub::ProjectDetails>

Detailed information about the created AWS Mobile Hub project.


=head2 _request_id => Str


=cut

