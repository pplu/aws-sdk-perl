
package Paws::Lightsail::GetDomainResult;
  use Moose;
  has Domain => (is => 'ro', isa => 'Paws::Lightsail::Domain', traits => ['NameInRequest'], request_name => 'domain' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetDomainResult

=head1 ATTRIBUTES


=head2 Domain => L<Paws::Lightsail::Domain>

An array of key-value pairs containing information about your get
domain request.


=head2 _request_id => Str


=cut

1;