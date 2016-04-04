
package Paws::ApiGateway::Deployment;
  use Moose;
  has ApiSummary => (is => 'ro', isa => 'Paws::ApiGateway::PathToMapOfMethodSnapshot');
  has CreatedDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Deployment

=head1 ATTRIBUTES


=head2 ApiSummary => L<Paws::ApiGateway::PathToMapOfMethodSnapshot>

Gets a summary of the RestApi at the date and time that the deployment
resource was created.



=head2 CreatedDate => L<Paws::API::TimeStamp>

The date and time that the deployment resource was created.



=head2 Description => Str

The description for the deployment resource.



=head2 Id => Str

The identifier for the deployment resource.




=cut

