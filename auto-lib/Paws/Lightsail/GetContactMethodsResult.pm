
package Paws::Lightsail::GetContactMethodsResult;
  use Moose;
  has ContactMethods => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ContactMethod]', traits => ['NameInRequest'], request_name => 'contactMethods' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetContactMethodsResult

=head1 ATTRIBUTES


=head2 ContactMethods => ArrayRef[L<Paws::Lightsail::ContactMethod>]

An array of objects that describe the contact methods.


=head2 _request_id => Str


=cut

1;