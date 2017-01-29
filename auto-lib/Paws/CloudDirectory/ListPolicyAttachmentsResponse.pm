
package Paws::CloudDirectory::ListPolicyAttachmentsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ObjectIdentifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListPolicyAttachmentsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token used for pagination.


=head2 ObjectIdentifiers => ArrayRef[Str|Undef]

List of ObjectIdentifiers to which the policy is attached.


=head2 _request_id => Str


=cut

