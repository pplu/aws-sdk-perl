
package Paws::Connect::CreateIntegrationAssociationResponse;
  use Moose;
  has IntegrationAssociationArn => (is => 'ro', isa => 'Str');
  has IntegrationAssociationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::CreateIntegrationAssociationResponse

=head1 ATTRIBUTES


=head2 IntegrationAssociationArn => Str

The Amazon Resource Name (ARN) for the association.


=head2 IntegrationAssociationId => Str

The identifier for the association.


=head2 _request_id => Str


=cut

