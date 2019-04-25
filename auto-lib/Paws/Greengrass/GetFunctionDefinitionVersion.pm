
package Paws::Greengrass::GetFunctionDefinitionVersion;
  use Moose;
  has FunctionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionDefinitionId', required => 1);
  has FunctionDefinitionVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionDefinitionVersionId', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunctionDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/functions/{FunctionDefinitionId}/versions/{FunctionDefinitionVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetFunctionDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetFunctionDefinitionVersion - Arguments for method GetFunctionDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunctionDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetFunctionDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFunctionDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetFunctionDefinitionVersionResponse =
      $greengrass->GetFunctionDefinitionVersion(
      FunctionDefinitionId        => 'My__string',
      FunctionDefinitionVersionId => 'My__string',
      NextToken                   => 'My__string',    # OPTIONAL
      );

    # Results:
    my $Arn = $GetFunctionDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $GetFunctionDefinitionVersionResponse->CreationTimestamp;
    my $Definition = $GetFunctionDefinitionVersionResponse->Definition;
    my $Id         = $GetFunctionDefinitionVersionResponse->Id;
    my $NextToken  = $GetFunctionDefinitionVersionResponse->NextToken;
    my $Version    = $GetFunctionDefinitionVersionResponse->Version;

   # Returns a L<Paws::Greengrass::GetFunctionDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetFunctionDefinitionVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionDefinitionId => Str

The ID of the Lambda function definition.



=head2 B<REQUIRED> FunctionDefinitionVersionId => Str

The ID of the function definition version.



=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFunctionDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

