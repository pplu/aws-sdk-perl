
package Paws::CodeDeploy::GetOnPremisesInstanceOutput;
  use Moose;
  has InstanceInfo => (is => 'ro', isa => 'Paws::CodeDeploy::InstanceInfo', traits => ['NameInRequest'], request_name => 'instanceInfo' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GetOnPremisesInstanceOutput

=head1 ATTRIBUTES


=head2 InstanceInfo => L<Paws::CodeDeploy::InstanceInfo>

Information about the on-premises instance.


=head2 _request_id => Str


=cut

1;