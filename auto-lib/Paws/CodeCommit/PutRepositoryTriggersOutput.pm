
package Paws::CodeCommit::PutRepositoryTriggersOutput;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'configurationId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::PutRepositoryTriggersOutput

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

The system-generated unique ID for the create or update operation.




=cut

1;