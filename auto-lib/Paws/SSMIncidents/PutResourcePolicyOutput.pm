
package Paws::SSMIncidents::PutResourcePolicyOutput;
  use Moose;
  has PolicyId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::PutResourcePolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyId => Str

The ID of the resource policy.


=head2 _request_id => Str


=cut

