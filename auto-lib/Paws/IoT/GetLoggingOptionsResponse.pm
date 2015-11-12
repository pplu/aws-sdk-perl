
package Paws::IoT::GetLoggingOptionsResponse;
  use Moose;
  has LogLevel => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetLoggingOptionsResponse

=head1 ATTRIBUTES


=head2 LogLevel => Str

  The logging level.

=head2 RoleArn => Str

  The ARN of the IAM role that grants access.


=cut

