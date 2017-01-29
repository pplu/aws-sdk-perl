
package Paws::CloudDirectory::ListObjectPoliciesResponse;
  use Moose;
  has AttachedPolicyIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectPoliciesResponse

=head1 ATTRIBUTES


=head2 AttachedPolicyIds => ArrayRef[Str|Undef]

List of policy ObjectIdentifiers, that are attached to the object.


=head2 NextToken => Str

Token used for pagination.


=head2 _request_id => Str


=cut

