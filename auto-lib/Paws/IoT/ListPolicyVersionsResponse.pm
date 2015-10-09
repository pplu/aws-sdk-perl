
package Paws::IoT::ListPolicyVersionsResponse;
  use Moose;
  has policyVersions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::PolicyVersion]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPolicyVersionsResponse

=head1 ATTRIBUTES

=head2 policyVersions => ArrayRef[Paws::IoT::PolicyVersion]

  

The policy versions.











=cut

