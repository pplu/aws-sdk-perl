
package Paws::ServerlessRepo::ListApplicationDependencies;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxItems');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'semanticVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplicationDependencies');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/dependencies');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::ListApplicationDependenciesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ListApplicationDependencies - Arguments for method ListApplicationDependencies on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplicationDependencies on the
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method ListApplicationDependencies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplicationDependencies.

=head1 SYNOPSIS

    my $serverlessrepo = Paws->service('ServerlessRepo');
    my $ListApplicationDependenciesResponse =
      $serverlessrepo->ListApplicationDependencies(
      ApplicationId   => 'My__string',
      MaxItems        => 1,               # OPTIONAL
      NextToken       => 'My__string',    # OPTIONAL
      SemanticVersion => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Dependencies = $ListApplicationDependenciesResponse->Dependencies;
    my $NextToken    = $ListApplicationDependenciesResponse->NextToken;

# Returns a L<Paws::ServerlessRepo::ListApplicationDependenciesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo/ListApplicationDependencies>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The Amazon Resource Name (ARN) of the application.



=head2 MaxItems => Int

The total number of items to return.



=head2 NextToken => Str

A token to specify where to start paginating.



=head2 SemanticVersion => Str

The semantic version of the application to get.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplicationDependencies in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

