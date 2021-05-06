
package Paws::IoT::ListProvisioningTemplatesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Templates => (is => 'ro', isa => 'ArrayRef[Paws::IoT::ProvisioningTemplateSummary]', traits => ['NameInRequest'], request_name => 'templates');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListProvisioningTemplatesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token to retrieve the next set of results.


=head2 Templates => ArrayRef[L<Paws::IoT::ProvisioningTemplateSummary>]

A list of fleet provisioning templates


=head2 _request_id => Str


=cut

