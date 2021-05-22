
package Paws::Lightsail::ResetDistributionCacheResult;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime' );
  has Operation => (is => 'ro', isa => 'Paws::Lightsail::Operation', traits => ['NameInRequest'], request_name => 'operation' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::ResetDistributionCacheResult

=head1 ATTRIBUTES


=head2 CreateTime => Str

The timestamp of the reset cache request (e.g., C<1479734909.17>) in
Unix time format.


=head2 Operation => L<Paws::Lightsail::Operation>

An array of objects that describe the result of the action, such as the
status of the request, the timestamp of the request, and the resources
affected by the request.


=head2 Status => Str

The status of the reset cache request.


=head2 _request_id => Str


=cut

1;