
package Paws::IoT::GetLoggingOptionsResponse;
  use Moose;
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 LogLevel => Str

The logging level.

Valid values are: C<"DEBUG">, C<"INFO">, C<"ERROR">, C<"WARN">, C<"DISABLED">
=head2 RoleArn => Str

The ARN of the IAM role that grants access.


=head2 _request_id => Str


=cut

