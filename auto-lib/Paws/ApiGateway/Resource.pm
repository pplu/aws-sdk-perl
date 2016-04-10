
package Paws::ApiGateway::Resource;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has ParentId => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has PathPart => (is => 'ro', isa => 'Str');
  has ResourceMethods => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethod');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Resource

=head1 ATTRIBUTES


=head2 Id => Str

The resource's identifier.



=head2 ParentId => Str

The parent resource's identifier.



=head2 Path => Str

The full path for this resource.



=head2 PathPart => Str

The last path segment for this resource.



=head2 ResourceMethods => L<Paws::ApiGateway::MapOfMethod>

Map of methods for this resource, which is included only if the request
uses the B<embed> query option.




=cut

