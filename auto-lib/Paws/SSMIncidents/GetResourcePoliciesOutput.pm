
package Paws::SSMIncidents::GetResourcePoliciesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourcePolicies => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::ResourcePolicy]', traits => ['NameInRequest'], request_name => 'resourcePolicies', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::GetResourcePoliciesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to continue to the next page of results.


=head2 B<REQUIRED> ResourcePolicies => ArrayRef[L<Paws::SSMIncidents::ResourcePolicy>]

Details about the resource policy attached to the response plan.


=head2 _request_id => Str


=cut

