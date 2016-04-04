
package Paws::ApiGateway::RestApi;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RestApi

=head1 ATTRIBUTES


=head2 CreatedDate => L<Paws::API::TimeStamp>

The date when the API was created, in ISO 8601 format.



=head2 Description => Str

The API's description.



=head2 Id => Str

The API's identifier. This identifier is unique across all of your APIs
in Amazon API Gateway.



=head2 Name => Str

The API's name.




=cut

