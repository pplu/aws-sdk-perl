
package Paws::Lightsail::GetInstanceAccessDetailsResult;
  use Moose;
  has AccessDetails => (is => 'ro', isa => 'Paws::Lightsail::InstanceAccessDetails', traits => ['NameInRequest'], request_name => 'accessDetails' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetInstanceAccessDetailsResult

=head1 ATTRIBUTES


=head2 AccessDetails => L<Paws::Lightsail::InstanceAccessDetails>

An array of key-value pairs containing information about a get instance
access request.


=head2 _request_id => Str


=cut

1;