
package Paws::Greengrass::CreateFunctionDefinitionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has LatestVersion => (is => 'ro', isa => 'Str');
  has LatestVersionArn => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateFunctionDefinitionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Arn of the definition.


=head2 CreationTimestamp => Str

Timestamp of when the definition was created.


=head2 Id => Str

Id of the definition.


=head2 LastUpdatedTimestamp => Str

Last updated timestamp of the definition.


=head2 LatestVersion => Str

Last version of the definition.


=head2 LatestVersionArn => Str

Latest version arn of the definition.


=head2 Name => Str

Name of the definition.


=head2 _request_id => Str


=cut

