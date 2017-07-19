
package Paws::ApiGateway::BasePathMapping;
  use Moose;
  has BasePath => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'basePath');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'restApiId');
  has Stage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stage');

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

The string identifier of the associated RestApi.


=head2 Stage => Str

The name of the associated stage.


=head2 _request_id => Str


=cut

