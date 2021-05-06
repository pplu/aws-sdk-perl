
package Paws::Lightsail::GetInstanceResult;
  use Moose;
  has Instance => (is => 'ro', isa => 'Paws::Lightsail::Instance', traits => ['NameInRequest'], request_name => 'instance' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceResult

=head1 ATTRIBUTES


=head2 Instance => L<Paws::Lightsail::Instance>

An array of key-value pairs containing information about the specified
instance.


=head2 _request_id => Str


=cut

1;