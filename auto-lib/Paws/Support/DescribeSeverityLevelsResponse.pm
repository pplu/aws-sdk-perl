
package Paws::Support::DescribeSeverityLevelsResponse;
  use Moose;
  has SeverityLevels => (is => 'ro', isa => 'ArrayRef[Paws::Support::SeverityLevel]', traits => ['Unwrapped'], xmlname => 'severityLevels' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeSeverityLevelsResponse

=head1 ATTRIBUTES


=head2 SeverityLevels => ArrayRef[L<Paws::Support::SeverityLevel>]

  The available severity levels for the support case. Available severity
levels are defined by your service level agreement with AWS.


=cut

1;