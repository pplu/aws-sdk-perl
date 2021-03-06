
package Paws::Greengrass::GetCoreDefinitionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has LatestVersion => (is => 'ro', isa => 'Str');
  has LatestVersionArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Greengrass::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetCoreDefinitionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the definition.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the definition was
created.


=head2 Id => Str

The ID of the definition.


=head2 LastUpdatedTimestamp => Str

The time, in milliseconds since the epoch, when the definition was last
updated.


=head2 LatestVersion => Str

The ID of the latest version associated with the definition.


=head2 LatestVersionArn => Str

The ARN of the latest version associated with the definition.


=head2 Name => Str

The name of the definition.


=head2 Tags => L<Paws::Greengrass::Tags>

Tag(s) attached to the resource arn.


=head2 _request_id => Str


=cut

