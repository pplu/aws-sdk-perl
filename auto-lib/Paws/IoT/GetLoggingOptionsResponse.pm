
package Paws::IoT::GetLoggingOptionsResponse;
  use Moose;
  has logLevel => (is => 'ro', isa => 'Str');
  has roleArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetLoggingOptionsResponse

=head1 ATTRIBUTES

=head2 logLevel => Str

  The logging level.
=head2 roleArn => Str

  The ARN of the IAM role that grants access.


=cut

