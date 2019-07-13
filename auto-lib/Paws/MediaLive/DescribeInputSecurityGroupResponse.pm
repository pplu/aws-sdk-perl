
package Paws::MediaLive::DescribeInputSecurityGroupResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Inputs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'inputs');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has WhitelistRules => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputWhitelistRule]', traits => ['NameInRequest'], request_name => 'whitelistRules');

  has _request_id => (is => 'ro', isa => 'Str');
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
=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.


=head2 WhitelistRules => ArrayRef[L<Paws::MediaLive::InputWhitelistRule>]

Whitelist rules and their sync status


=head2 _request_id => Str


=cut

