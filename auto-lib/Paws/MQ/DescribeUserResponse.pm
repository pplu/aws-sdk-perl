
package Paws::MQ::DescribeUserResponse;
  use Moo;
  use Types::Standard qw/Str Bool Undef ArrayRef/;
  use Paws::MQ::Types qw/MQ_UserPendingChanges/;
  has BrokerId => (is => 'ro', isa => Str);
  has ConsoleAccess => (is => 'ro', isa => Bool);
  has Groups => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Pending => (is => 'ro', isa => MQ_UserPendingChanges);
  has Username => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'BrokerId' => 'brokerId',
                       'Groups' => 'groups',
                       'ConsoleAccess' => 'consoleAccess',
                       'Username' => 'username',
                       'Pending' => 'pending'
                     },
  'types' => {
               'BrokerId' => {
                               'type' => 'Str'
                             },
               'ConsoleAccess' => {
                                    'type' => 'Bool'
                                  },
               'Pending' => {
                              'type' => 'MQ_UserPendingChanges',
                              'class' => 'Paws::MQ::UserPendingChanges'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Groups' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'Username' => {
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

Paws::MQ::DescribeUserResponse

=head1 ATTRIBUTES


=head2 BrokerId => Str

Required. The unique ID that Amazon MQ generates for the broker.


=head2 ConsoleAccess => Bool

Enables access to the the ActiveMQ Web Console for the ActiveMQ user.


=head2 Groups => ArrayRef[Str|Undef]

The list of groups (20 maximum) to which the ActiveMQ user belongs.
This value can contain only alphanumeric characters, dashes, periods,
underscores, and tildes (- . _ ~). This value must be 2-100 characters
long.


=head2 Pending => MQ_UserPendingChanges

The status of the changes pending for the ActiveMQ user.


=head2 Username => Str

Required. The username of the ActiveMQ user. This value can contain
only alphanumeric characters, dashes, periods, underscores, and tildes
(- . _ ~). This value must be 2-100 characters long.


=head2 _request_id => Str


=cut

