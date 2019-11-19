
package Paws::MediaLive::DescribeInputSecurityGroupResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::MediaLive::Types qw/MediaLive_InputWhitelistRule MediaLive_Tags/;
  has Arn => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Inputs => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has State => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MediaLive_Tags);
  has WhitelistRules => (is => 'ro', isa => ArrayRef[MediaLive_InputWhitelistRule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'WhitelistRules' => 'whitelistRules',
                       'Tags' => 'tags',
                       'Id' => 'id',
                       'State' => 'state',
                       'Inputs' => 'inputs',
                       'Arn' => 'arn'
                     },
  'types' => {
               'WhitelistRules' => {
                                     'type' => 'ArrayRef[MediaLive_InputWhitelistRule]',
                                     'class' => 'Paws::MediaLive::InputWhitelistRule'
                                   },
               'Id' => {
                         'type' => 'Str'
                       },
               'Inputs' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'State' => {
                            'type' => 'Str'
                          },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeInputSecurityGroupResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Unique ARN of Input Security Group


=head2 Id => Str

The Id of the Input Security Group


=head2 Inputs => ArrayRef[Str|Undef]

The list of inputs currently using this Input Security Group.


=head2 State => Str

The current state of the Input Security Group.

Valid values are: C<"IDLE">, C<"IN_USE">, C<"UPDATING">, C<"DELETED">
=head2 Tags => MediaLive_Tags

A collection of key-value pairs.


=head2 WhitelistRules => ArrayRef[MediaLive_InputWhitelistRule]

Whitelist rules and their sync status


=head2 _request_id => Str


=cut

