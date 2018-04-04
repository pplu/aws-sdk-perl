
package Paws::DeviceFarm::CreateInstanceProfileResult;
  use Moose;
  has InstanceProfile => (is => 'ro', isa => 'Paws::DeviceFarm::InstanceProfile', traits => ['NameInRequest'], request_name => 'instanceProfile' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateInstanceProfileResult

=head1 ATTRIBUTES


=head2 InstanceProfile => L<Paws::DeviceFarm::InstanceProfile>

An object containing information about your instance profile.


=head2 _request_id => Str


=cut

1;