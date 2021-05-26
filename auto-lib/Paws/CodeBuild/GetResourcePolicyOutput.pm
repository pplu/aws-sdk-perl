
package Paws::CodeBuild::GetResourcePolicyOutput;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::GetResourcePolicyOutput

=head1 ATTRIBUTES


=head2 Policy => Str

The resource policy for the resource identified by the input ARN
parameter.


=head2 _request_id => Str


=cut

1;