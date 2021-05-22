
package Paws::ElastiCache::User;
  use Moose;
  has AccessString => (is => 'ro', isa => 'Str');
  has ARN => (is => 'ro', isa => 'Str');
  has Authentication => (is => 'ro', isa => 'Paws::ElastiCache::Authentication');
  has Engine => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UserGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UserId => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::User

=head1 ATTRIBUTES


=head2 AccessString => Str

Access permissions string used for this user.


=head2 ARN => Str

The Amazon Resource Name (ARN) of the user.


=head2 Authentication => L<Paws::ElastiCache::Authentication>

Denotes whether the user requires a password to authenticate.


=head2 Engine => Str

The current supported value is Redis.


=head2 Status => Str

Indicates the user status. Can be "active", "modifying" or "deleting".


=head2 UserGroupIds => ArrayRef[Str|Undef]

Returns a list of the user group IDs the user belongs to.


=head2 UserId => Str

The ID of the user.


=head2 UserName => Str

The username of the user.


=head2 _request_id => Str


=cut

