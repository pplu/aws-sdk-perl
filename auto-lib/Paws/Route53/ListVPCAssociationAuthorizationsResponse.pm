
package Paws::Route53::ListVPCAssociationAuthorizationsResponse;
  use Moose;
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has VPCs => (is => 'ro', isa => 'ArrayRef[Paws::Route53::VPC]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListVPCAssociationAuthorizationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you can associate the listed VPCs with.



=head2 NextToken => Str

When the response includes a C<NextToken> element, there are more VPCs
that can be associated with the specified hosted zone. To get the next
page of VPCs, submit another C<ListVPCAssociationAuthorizations>
request, and include the value of the C<NextToken> element from the
response in the C<nexttoken> request parameter.



=head2 B<REQUIRED> VPCs => ArrayRef[L<Paws::Route53::VPC>]

The list of VPCs that are authorized to be associated with the
specified hosted zone.




=cut

