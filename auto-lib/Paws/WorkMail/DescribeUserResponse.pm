
package Paws::WorkMail::DescribeUserResponse;
  use Moose;
  has DisabledDate => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Email => (is => 'ro', isa => 'Str');
  has EnabledDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str');
  has UserRole => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeUserResponse

=head1 ATTRIBUTES


=head2 DisabledDate => Str

The date and time at which the user was disabled for Amazon WorkMail
usage, in UNIX epoch time format.


=head2 DisplayName => Str

The display name of the user.


=head2 Email => Str

The email of the user.


=head2 EnabledDate => Str

The date and time at which the user was enabled for Amazon WorkMail
usage, in UNIX epoch time format.


=head2 Name => Str

The name for the user.


=head2 State => Str

The state of a user: enabled (registered to Amazon WorkMail) or
disabled (deregistered or never registered to Amazon WorkMail).

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">
=head2 UserId => Str

The identifier for the described user.


=head2 UserRole => Str

In certain cases other entities are modeled as users. If
interoperability is enabled, resources are imported into Amazon
WorkMail as users. Because different Amazon WorkMail organizations rely
on different directory types, administrators can distinguish between a
user that is not registered to Amazon WorkMail (is disabled and has a
user role) and the administrative users of the directory. The values
are USER, RESOURCE, and SYSTEM_USER.

Valid values are: C<"USER">, C<"RESOURCE">, C<"SYSTEM_USER">
=head2 _request_id => Str


=cut

1;