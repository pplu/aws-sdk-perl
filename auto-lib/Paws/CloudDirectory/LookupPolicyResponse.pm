
package Paws::CloudDirectory::LookupPolicyResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PolicyToPathList => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::PolicyToPath]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::LookupPolicyResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token used for pagination.


=head2 PolicyToPathList => ArrayRef[L<Paws::CloudDirectory::PolicyToPath>]

Provides list of path to policies. Policies contain PolicyId,
ObjectIdentifier, and PolicyType.


=head2 _request_id => Str


=cut

