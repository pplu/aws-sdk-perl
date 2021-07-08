
package Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfigurationResponse;
  use Moose;
  has InstanceAccessControlAttributeConfiguration => (is => 'ro', isa => 'Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration');
  has Status => (is => 'ro', isa => 'Str');
  has StatusReason => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::DescribeInstanceAccessControlAttributeConfigurationResponse

=head1 ATTRIBUTES


=head2 InstanceAccessControlAttributeConfiguration => L<Paws::SSOAdmin::InstanceAccessControlAttributeConfiguration>

Gets the list of AWS SSO identity store attributes added to your ABAC
configuration.


=head2 Status => Str

The status of the attribute configuration process.

Valid values are: C<"ENABLED">, C<"CREATION_IN_PROGRESS">, C<"CREATION_FAILED">
=head2 StatusReason => Str

Provides more details about the current status of the specified
attribute.


=head2 _request_id => Str


=cut

1;