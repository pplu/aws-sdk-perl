
package Paws::MQ::DescribeUserResponse;
  use Moose;
  has BrokerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'brokerId');
  has ConsoleAccess => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'consoleAccess');
  has Groups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'groups');
  has Pending => (is => 'ro', isa => 'Paws::MQ::UserPendingChanges', traits => ['NameInRequest'], request_name => 'pending');
  has Username => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'username');

  has _request_id => (is => 'ro', isa => 'Str');
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


=head2 Pending => L<Paws::MQ::UserPendingChanges>

The status of the changes pending for the ActiveMQ user.


=head2 Username => Str

Required. The username of the ActiveMQ user. This value can contain
only alphanumeric characters, dashes, periods, underscores, and tildes
(- . _ ~). This value must be 2-100 characters long.


=head2 _request_id => Str


=cut

