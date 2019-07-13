
package Paws::ECS::PutAccountSettingResponse;
  use Moose;
  has Setting => (is => 'ro', isa => 'Paws::ECS::Setting', traits => ['NameInRequest'], request_name => 'setting' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::PutAccountSettingResponse

=head1 ATTRIBUTES


=head2 Setting => L<Paws::ECS::Setting>

The current account setting for a resource.


=head2 _request_id => Str


=cut

1;