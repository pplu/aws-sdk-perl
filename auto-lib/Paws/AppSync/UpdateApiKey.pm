
package Paws::AppSync::UpdateApiKey;
  use Moose;
  has ApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'apiId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Expires => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expires');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApiKey');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apis/{apiId}/apikeys/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppSync::UpdateApiKeyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::UpdateApiKey - Arguments for method UpdateApiKey on L<Paws::AppSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApiKey on the
L<AWS AppSync|Paws::AppSync> service. Use the attributes of this class
as arguments to method UpdateApiKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApiKey.

=head1 SYNOPSIS

    my $appsync = Paws->service('AppSync');
    my $UpdateApiKeyResponse = $appsync->UpdateApiKey(
      ApiId       => 'MyString',
      Id          => 'MyString',
      Description => 'MyString',    # OPTIONAL
      Expires     => 1,             # OPTIONAL
    );

    # Results:
    my $ApiKey = $UpdateApiKeyResponse->ApiKey;

    # Returns a L<Paws::AppSync::UpdateApiKeyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appsync/UpdateApiKey>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

The ID for the GraphQL API.



=head2 Description => Str

A description of the purpose of the API key.



=head2 Expires => Int

The time from update time after which the API key expires. The date is
represented as seconds since the epoch. For more information, see .



=head2 B<REQUIRED> Id => Str

The API key ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApiKey in L<Paws::AppSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

