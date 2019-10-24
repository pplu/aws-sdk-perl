# Generated from json/callresult_class.tt

package Paws::WorkMail::DescribeUserResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has DisabledDate => (is => 'ro', isa => Str);
  has DisplayName => (is => 'ro', isa => Str);
  has Email => (is => 'ro', isa => Str);
  has EnabledDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has UserId => (is => 'ro', isa => Str);
  has UserRole => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserRole' => {
                               'type' => 'Str'
                             },
               'UserId' => {
                             'type' => 'Str'
                           },
               'State' => {
                            'type' => 'Str'
                          },
               'DisabledDate' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DisplayName' => {
                                  'type' => 'Str'
                                },
               'Email' => {
                            'type' => 'Str'
                          },
               'EnabledDate' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


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
disabled (deregistered or never registered to WorkMail).

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">
=head2 UserId => Str

The identifier for the described user.


=head2 UserRole => Str

In certain cases, other entities are modeled as users. If
interoperability is enabled, resources are imported into Amazon
WorkMail as users. Because different WorkMail organizations rely on
different directory types, administrators can distinguish between an
unregistered user (account is disabled and has a user role) and the
directory administrators. The values are USER, RESOURCE, and
SYSTEM_USER.

Valid values are: C<"USER">, C<"RESOURCE">, C<"SYSTEM_USER">
=head2 _request_id => Str


=cut

1;