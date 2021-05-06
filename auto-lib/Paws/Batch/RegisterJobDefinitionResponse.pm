
package Paws::Batch::RegisterJobDefinitionResponse;
  use Moose;
  has JobDefinitionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobDefinitionArn', required => 1);
  has JobDefinitionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobDefinitionName', required => 1);
  has Revision => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'revision', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::RegisterJobDefinitionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobDefinitionArn => Str

The Amazon Resource Name (ARN) of the job definition.


=head2 B<REQUIRED> JobDefinitionName => Str

The name of the job definition.


=head2 B<REQUIRED> Revision => Int

The revision of the job definition.


=head2 _request_id => Str


=cut

