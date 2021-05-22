
package Paws::Route53::ListHostedZonesByVPCResponse;
  use Moose;
  has HostedZoneSummaries => (is => 'ro', isa => 'ArrayRef[Paws::Route53::HostedZoneSummary]', request_name => 'HostedZoneSummary', traits => ['NameInRequest'], required => 1);
  has MaxItems => (is => 'ro', isa => 'Str', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHostedZonesByVPCResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneSummaries => ArrayRef[L<Paws::Route53::HostedZoneSummary>]

A list that contains one C<HostedZoneSummary> element for each hosted
zone that the specified Amazon VPC is associated with. Each
C<HostedZoneSummary> element contains the hosted zone name and ID, and
information about who owns the hosted zone.



=head2 B<REQUIRED> MaxItems => Str

The value that you specified for C<MaxItems> in the most recent
C<ListHostedZonesByVPC> request.



=head2 NextToken => Str

The value that you specified for C<NextToken> in the most recent
C<ListHostedZonesByVPC> request.




=cut

