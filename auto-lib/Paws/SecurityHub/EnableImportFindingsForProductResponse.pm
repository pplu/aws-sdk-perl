
package Paws::SecurityHub::EnableImportFindingsForProductResponse;
  use Moose;
  has ProductSubscriptionArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::EnableImportFindingsForProductResponse

=head1 ATTRIBUTES


=head2 ProductSubscriptionArn => Str

The ARN of your subscription to the product to enable integrations for.


=head2 _request_id => Str


=cut

