
package Paws::Proton::UpdateServicePipelineOutput;
  use Moose;
  has Pipeline => (is => 'ro', isa => 'Paws::Proton::ServicePipeline', traits => ['NameInRequest'], request_name => 'pipeline' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::UpdateServicePipelineOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Pipeline => L<Paws::Proton::ServicePipeline>

The pipeline details returned by AWS Proton.


=head2 _request_id => Str


=cut

1;