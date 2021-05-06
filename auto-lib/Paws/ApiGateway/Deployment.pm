
package Paws::ApiGateway::Deployment;
  use Moose;
  has ApiSummary => (is => 'ro', isa => 'Paws::ApiGateway::PathToMapOfMethodSnapshot', traits => ['NameInRequest'], request_name => 'apiSummary');
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Deployment

=head1 ATTRIBUTES


=head2 ApiSummary => L<Paws::ApiGateway::PathToMapOfMethodSnapshot>

A summary of the RestApi at the date and time that the deployment
resource was created.


=head2 CreatedDate => Str

The date and time that the deployment resource was created.


=head2 Description => Str

The description for the deployment resource.


=head2 Id => Str

The identifier for the deployment resource.


=head2 _request_id => Str


=cut

