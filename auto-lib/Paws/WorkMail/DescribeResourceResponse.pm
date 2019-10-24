# Generated from json/callresult_class.tt

package Paws::WorkMail::DescribeResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw/WorkMail_BookingOptions/;
  has BookingOptions => (is => 'ro', isa => WorkMail_BookingOptions);
  has DisabledDate => (is => 'ro', isa => Str);
  has Email => (is => 'ro', isa => Str);
  has EnabledDate => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ResourceId => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'BookingOptions' => {
                                     'class' => 'Paws::WorkMail::BookingOptions',
                                     'type' => 'WorkMail_BookingOptions'
                                   },
               'State' => {
                            'type' => 'Str'
                          },
               'DisabledDate' => {
                                   'type' => 'Str'
                                 },
               'Type' => {
                           'type' => 'Str'
                         },
               '_request_id' => {
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

Paws::WorkMail::DescribeResourceResponse

=head1 ATTRIBUTES


=head2 BookingOptions => WorkMail_BookingOptions

The booking options for the described resource.


=head2 DisabledDate => Str

The date and time when a resource was disabled from WorkMail, in UNIX
epoch time format.


=head2 Email => Str

The email of the described resource.


=head2 EnabledDate => Str

The date and time when a resource was enabled for WorkMail, in UNIX
epoch time format.


=head2 Name => Str

The name of the described resource.


=head2 ResourceId => Str

The identifier of the described resource.


=head2 State => Str

The state of the resource: enabled (registered to Amazon WorkMail) or
disabled (deregistered or never registered to WorkMail).

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">
=head2 Type => Str

The type of the described resource.

Valid values are: C<"ROOM">, C<"EQUIPMENT">
=head2 _request_id => Str


=cut

1;