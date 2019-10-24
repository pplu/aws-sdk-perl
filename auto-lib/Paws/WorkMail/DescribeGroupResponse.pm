# Generated from json/callresult_class.tt

package Paws::WorkMail::DescribeGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has DisabledDate => (is => 'ro', isa => Str);
  has Email => (is => 'ro', isa => Str);
  has EnabledDate => (is => 'ro', isa => Str);
  has GroupId => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'GroupId' => {
                              'type' => 'Str'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'State' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'EnabledDate' => {
                                  'type' => 'Str'
                                },
               'Email' => {
                            'type' => 'Str'
                          },
               'DisabledDate' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeGroupResponse

=head1 ATTRIBUTES


=head2 DisabledDate => Str

The date and time when a user was deregistered from WorkMail, in UNIX
epoch time format.


=head2 Email => Str

The email of the described group.


=head2 EnabledDate => Str

The date and time when a user was registered to WorkMail, in UNIX epoch
time format.


=head2 GroupId => Str

The identifier of the described group.


=head2 Name => Str

The name of the described group.


=head2 State => Str

The state of the user: enabled (registered to Amazon WorkMail) or
disabled (deregistered or never registered to WorkMail).

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">
=head2 _request_id => Str


=cut

1;