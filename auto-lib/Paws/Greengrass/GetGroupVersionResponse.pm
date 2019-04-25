
package Paws::Greengrass::GetGroupVersionResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Definition => (is => 'ro', isa => 'Paws::Greengrass::GroupVersion');
  has Id => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetGroupVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the group version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the group version was
created.


=head2 Definition => L<Paws::Greengrass::GroupVersion>

Information about the group version definition.


=head2 Id => Str

The ID of the group version.


=head2 Version => Str

The unique ID for the version of the group.


=head2 _request_id => Str


=cut

