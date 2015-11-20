
package Paws::ApiGateway::Account;
  use Moose;
  has CloudwatchRoleArn => (is => 'ro', isa => 'Str');
  has ThrottleSettings => (is => 'ro', isa => 'Paws::ApiGateway::ThrottleSettings');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Account

=head1 ATTRIBUTES


=head2 CloudwatchRoleArn => Str

  Specifies the Amazon resource name (ARN) of an Amazon CloudWatch role
for the current Account resource.

=head2 ThrottleSettings => L<Paws::ApiGateway::ThrottleSettings>

  Specifies the application programming interface (API) throttle settings
for the current Account resource.


=cut

