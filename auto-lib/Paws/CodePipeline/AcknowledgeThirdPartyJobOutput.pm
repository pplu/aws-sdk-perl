
package Paws::CodePipeline::AcknowledgeThirdPartyJobOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::AcknowledgeThirdPartyJobOutput

=head1 ATTRIBUTES


=head2 Status => Str

The status information for the third party job, if any.

Valid values are: C<"Created">, C<"Queued">, C<"Dispatched">, C<"InProgress">, C<"TimedOut">, C<"Succeeded">, C<"Failed">
=head2 _request_id => Str


=cut

1;