
package Paws::IoTWireless::GetDestinationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Expression => (is => 'ro', isa => 'Str');
  has ExpressionType => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetDestinationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name of the resource.


=head2 Description => Str

The description of the resource.


=head2 Expression => Str

The rule name or topic rule to send messages to.


=head2 ExpressionType => Str

The type of value in C<Expression>.

Valid values are: C<"RuleName">, C<"MqttTopic">
=head2 Name => Str

The name of the resource.


=head2 RoleArn => Str

The ARN of the IAM Role that authorizes the destination.


=head2 _request_id => Str


=cut

