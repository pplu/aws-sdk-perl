
package Paws::WorkMail::GetDefaultRetentionPolicyResponse;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has FolderConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::FolderConfiguration]');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetDefaultRetentionPolicyResponse

=head1 ATTRIBUTES


=head2 Description => Str

The retention policy description.


=head2 FolderConfigurations => ArrayRef[L<Paws::WorkMail::FolderConfiguration>]

The retention policy folder configurations.


=head2 Id => Str

The retention policy ID.


=head2 Name => Str

The retention policy name.


=head2 _request_id => Str


=cut

1;