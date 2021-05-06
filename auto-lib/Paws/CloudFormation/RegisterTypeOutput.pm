
package Paws::CloudFormation::RegisterTypeOutput;
  use Moose;
  has RegistrationToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::RegisterTypeOutput

=head1 ATTRIBUTES


=head2 RegistrationToken => Str

The identifier for this registration request.

Use this registration token when calling C< DescribeTypeRegistration >,
which returns information about the status and IDs of the type
registration.


=head2 _request_id => Str


=cut

