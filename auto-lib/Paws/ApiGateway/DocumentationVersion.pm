
package Paws::ApiGateway::DocumentationVersion;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdDate');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DocumentationVersion

=head1 ATTRIBUTES


=head2 CreatedDate => Str

The date when the API documentation snapshot is created.


=head2 Description => Str

The description of the API documentation snapshot.


=head2 Version => Str

The version identifier of the API documentation snapshot.


=head2 _request_id => Str


=cut

