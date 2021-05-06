
package Paws::EKS::ListFargateProfilesResponse;
  use Moose;
  has FargateProfileNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'fargateProfileNames');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::ListFargateProfilesResponse

=head1 ATTRIBUTES


=head2 FargateProfileNames => ArrayRef[Str|Undef]

A list of all of the Fargate profiles associated with the specified
cluster.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListFargateProfiles>
request. When the results of a C<ListFargateProfiles> request exceed
C<maxResults>, you can use this value to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

