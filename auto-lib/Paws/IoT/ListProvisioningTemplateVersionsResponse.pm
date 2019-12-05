
package Paws::IoT::ListProvisioningTemplateVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ProvisioningTemplateVersionSummary]', traits => ['NameInRequest'], request_name => 'versions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListProvisioningTemplateVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to retrieve the next set of results.


=head2 Versions => ArrayRef[L<Paws::IoT::ProvisioningTemplateVersionSummary>]

The list of fleet provisioning template versions.


=head2 _request_id => Str


=cut

