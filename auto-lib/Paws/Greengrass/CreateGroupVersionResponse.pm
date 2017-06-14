
package Paws::Greengrass::CreateGroupVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateGroupVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Arn of the version.


=head2 CreationTimestamp => Str

Timestamp of when the version was created.


=head2 Id => Str

Id of the resource container.


=head2 Version => Str

Unique Id of a version.


=head2 _request_id => Str


=cut

