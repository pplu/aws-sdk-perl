
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

The pagination token.


=head2 PolicyToPathList => ArrayRef[L<Paws::CloudDirectory::PolicyToPath>]

Provides list of path to policies. Policies contain C<PolicyId>,
C<ObjectIdentifier>, and C<PolicyType>. For more information, see
Policies
(http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_key_concepts.html#policies).


=head2 _request_id => Str


=cut

