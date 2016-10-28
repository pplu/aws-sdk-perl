
package Paws::IoT::ListPolicyVersionsResponse;
  use Moose;
  has PolicyVersions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::PolicyVersion]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListPolicyVersionsResponse

=head1 ATTRIBUTES


=head2 PolicyVersions => ArrayRef[L<Paws::IoT::PolicyVersion>]

The policy versions.




=cut

