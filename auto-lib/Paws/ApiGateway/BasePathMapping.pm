
package Paws::ApiGateway::BasePathMapping;
  use Moose;
  has BasePath => (is => 'ro', isa => 'Str');
  has RestApiId => (is => 'ro', isa => 'Str');
  has Stage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::BasePathMapping

=head1 ATTRIBUTES


=head2 BasePath => Str

The base path name that callers of the API must provide as part of the
URL after the domain name.


=head2 RestApiId => Str

The name of the API.


=head2 Stage => Str

The name of the API's stage.


=head2 _request_id => Str


=cut

