
package Paws::CodePipeline::AcknowledgeThirdPartyJobOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::AcknowledgeThirdPartyJobOutput

=head1 ATTRIBUTES

=head2 Status => Str

  The status information for the third party job, if any.


=cut

1;