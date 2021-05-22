
package Paws::Appflow::CreateConnectorProfileResponse;
  use Moose;
  has ConnectorProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'connectorProfileArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::CreateConnectorProfileResponse

=head1 ATTRIBUTES


=head2 ConnectorProfileArn => Str

The Amazon Resource Name (ARN) of the connector profile.


=head2 _request_id => Str


=cut

