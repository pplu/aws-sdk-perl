
package Paws::DataPipeline::ValidatePipelineDefinitionOutput;
  use Moose;
  has Errored => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'errored' , required => 1);
  has ValidationErrors => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationError]', traits => ['Unwrapped'], xmlname => 'validationErrors' );
  has ValidationWarnings => (is => 'ro', isa => 'ArrayRef[Paws::DataPipeline::ValidationWarning]', traits => ['Unwrapped'], xmlname => 'validationWarnings' );


### main pod documentation begin ###

=head1 NAME

Paws::DataPipeline::ValidatePipelineDefinitionOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errored => Bool

  Indicates whether there were validation errors.

=head2 ValidationErrors => ArrayRef[L<Paws::DataPipeline::ValidationError>]

  Any validation errors that were found.

=head2 ValidationWarnings => ArrayRef[L<Paws::DataPipeline::ValidationWarning>]

  Any validation warnings that were found.


=cut

1;