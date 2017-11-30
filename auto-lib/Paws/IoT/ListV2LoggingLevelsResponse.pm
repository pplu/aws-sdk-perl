
package Paws::IoT::ListV2LoggingLevelsResponse;
  use Moose;
  has LogTargetConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::IoT::LogTargetConfiguration]', traits => ['NameInRequest'], request_name => 'logTargetConfigurations');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListV2LoggingLevelsResponse

=head1 ATTRIBUTES


=head2 LogTargetConfigurations => ArrayRef[L<Paws::IoT::LogTargetConfiguration>]

The logging configuration for a target.


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 _request_id => Str


=cut

