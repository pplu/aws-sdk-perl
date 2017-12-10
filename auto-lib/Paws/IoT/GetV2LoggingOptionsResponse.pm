
package Paws::IoT::GetV2LoggingOptionsResponse;
  use Moose;
  has DefaultLogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'defaultLogLevel');
  has DisableAllLogs => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'disableAllLogs');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetV2LoggingOptionsResponse

=head1 ATTRIBUTES


=head2 DefaultLogLevel => Str

The default log level.

Valid values are: C<"DEBUG">, C<"INFO">, C<"ERROR">, C<"WARN">, C<"DISABLED">
=head2 DisableAllLogs => Bool

Disables all logs.


=head2 RoleArn => Str

The IAM role ARN AWS IoT uses to write to your CloudWatch logs.


=head2 _request_id => Str


=cut

