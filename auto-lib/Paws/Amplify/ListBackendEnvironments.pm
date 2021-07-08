
package Paws::Amplify::ListBackendEnvironments;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'appId', required => 1);
  has EnvironmentName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'environmentName');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListBackendEnvironments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/apps/{appId}/backendenvironments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Amplify::ListBackendEnvironmentsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::ListBackendEnvironments - Arguments for method ListBackendEnvironments on L<Paws::Amplify>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListBackendEnvironments on the
L<AWS Amplify|Paws::Amplify> service. Use the attributes of this class
as arguments to method ListBackendEnvironments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListBackendEnvironments.

=head1 SYNOPSIS

    my $amplify = Paws->service('Amplify');
    my $ListBackendEnvironmentsResult = $amplify->ListBackendEnvironments(
      AppId           => 'MyAppId',
      EnvironmentName => 'MyEnvironmentName',    # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $BackendEnvironments =
      $ListBackendEnvironmentsResult->BackendEnvironments;
    my $NextToken = $ListBackendEnvironmentsResult->NextToken;

    # Returns a L<Paws::Amplify::ListBackendEnvironmentsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/amplify/ListBackendEnvironments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppId => Str

The unique ID for an Amplify app.



=head2 EnvironmentName => Str

The name of the backend environment



=head2 MaxResults => Int

The maximum number of records to list in a single response.



=head2 NextToken => Str

A pagination token. Set to null to start listing backend environments
from the start. If a non-null pagination token is returned in a result,
pass its value in here to list more backend environments.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListBackendEnvironments in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

