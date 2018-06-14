
package Paws::Greengrass::CreateFunctionDefinitionVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has FunctionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionDefinitionId', required => 1);
  has Functions => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Function]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFunctionDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/functions/{FunctionDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateFunctionDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateFunctionDefinitionVersion - Arguments for method CreateFunctionDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunctionDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateFunctionDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunctionDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateFunctionDefinitionVersionResponse =
      $greengrass->CreateFunctionDefinitionVersion(
      FunctionDefinitionId => 'My__string',
      AmznClientToken      => 'My__string',    # OPTIONAL
      Functions            => [
        {
          FunctionConfiguration => {
            ExecArgs    => 'My__string',
            Executable  => 'My__string',
            Environment => {
              ResourceAccessPolicies => [
                {
                  ResourceId => 'My__string',
                  Permission => 'ro',           # values: ro, rw; OPTIONAL
                },
                ...
              ],                                # OPTIONAL
              Variables => { 'My__string' => 'My__string', },    # OPTIONAL
              AccessSysfs => 1,                                  # OPTIONAL
            },    # OPTIONAL
            MemorySize   => 1,           # OPTIONAL
            EncodingType => 'binary',    # values: binary, json; OPTIONAL
            Pinned       => 1,           # OPTIONAL
            Timeout      => 1,           # OPTIONAL
          },    # OPTIONAL
          Id          => 'My__string',
          FunctionArn => 'My__string',
        },
        ...
      ],        # OPTIONAL
      );

    # Results:
    my $CreationTimestamp =
      $CreateFunctionDefinitionVersionResponse->CreationTimestamp;
    my $Version = $CreateFunctionDefinitionVersionResponse->Version;
    my $Id      = $CreateFunctionDefinitionVersionResponse->Id;
    my $Arn     = $CreateFunctionDefinitionVersionResponse->Arn;

# Returns a L<Paws::Greengrass::CreateFunctionDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/greengrass/>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> FunctionDefinitionId => Str

The ID of the Lambda function definition.



=head2 Functions => ArrayRef[L<Paws::Greengrass::Function>]

A list of Lambda functions in this function definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunctionDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

