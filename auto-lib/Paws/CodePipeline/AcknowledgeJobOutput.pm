
package Paws::CodePipeline::AcknowledgeJobOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status' );


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::AcknowledgeJobOutput

=head1 ATTRIBUTES

=head2 Status => Str

  Whether the job worker has received the specified job.


=cut

1;