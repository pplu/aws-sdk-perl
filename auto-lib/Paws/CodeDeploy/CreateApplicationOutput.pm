
package Paws::CodeDeploy::CreateApplicationOutput;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateApplicationOutput

=head1 ATTRIBUTES


=head2 ApplicationId => Str

A unique application ID.


=head2 _request_id => Str


=cut

1;