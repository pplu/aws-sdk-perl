
package Paws::Greengrass::GetFunctionDefinition;
  use Moose;
  has FunctionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunctionDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/functions/{FunctionDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetFunctionDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetFunctionDefinition - Arguments for method GetFunctionDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunctionDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetFunctionDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFunctionDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetFunctionDefinitionResponse = $greengrass->GetFunctionDefinition(
      FunctionDefinitionId => 'My__string',

    );

    # Results:
    my $Arn               = $GetFunctionDefinitionResponse->Arn;
    my $CreationTimestamp = $GetFunctionDefinitionResponse->CreationTimestamp;
    my $Id                = $GetFunctionDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $GetFunctionDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $GetFunctionDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $GetFunctionDefinitionResponse->LatestVersionArn;
    my $Name             = $GetFunctionDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::GetFunctionDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetFunctionDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionDefinitionId => Str

The ID of the Lambda function definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFunctionDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

