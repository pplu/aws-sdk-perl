
package Paws::Greengrass::GetResourceDefinitionVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::Greengrass::ResourceDefinitionVersion');
  has Id => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetResourceDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Arn of the resource definition version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the resource definition
version was created.


=head2 Definition => L<Paws::Greengrass::ResourceDefinitionVersion>

Information about the definition.


=head2 Id => Str

The ID of the resource definition version.


=head2 Version => Str

The version of the resource definition version.


=head2 _request_id => Str


=cut

