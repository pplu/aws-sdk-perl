
package Paws::WorkMail::DescribeGroupResponse;
  use Moose;
  has DisabledDate => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has EnabledDate => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeGroupResponse

=head1 ATTRIBUTES


=head2 DisabledDate => Str

The date and time when a user was deregistered from Amazon WorkMail, in
UNIX epoch time format.


=head2 Email => Str

The email of the described group.


=head2 EnabledDate => Str

The date and time when a user was registered to Amazon WorkMail, in
UNIX epoch time format.


=head2 GroupId => Str

The identifier of the described group.


=head2 Name => Str

The name of the described group.


=head2 State => Str

The state of the user: enabled (registered to Amazon WorkMail) or
disabled (deregistered or never registered to Amazon WorkMail).

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">
=head2 _request_id => Str


=cut

1;