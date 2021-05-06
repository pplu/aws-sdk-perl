
package Paws::Support::DescribeSeverityLevelsResponse;
  use Moose;
  has SeverityLevels => (is => 'ro', isa => 'ArrayRef[Paws::Support::SeverityLevel]', traits => ['NameInRequest'], request_name => 'severityLevels' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeSeverityLevelsResponse

=head1 ATTRIBUTES


=head2 SeverityLevels => ArrayRef[L<Paws::Support::SeverityLevel>]

The available severity levels for the support case. Available severity
levels are defined by your service level agreement with AWS.


=head2 _request_id => Str


=cut

1;