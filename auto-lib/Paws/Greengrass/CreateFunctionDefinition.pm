
package Paws::Greengrass::CreateFunctionDefinition;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has InitialVersion => (is => 'ro', isa => 'Paws::Greengrass::FunctionDefinitionVersion');
  has Name => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Greengrass::Tags', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFunctionDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/functions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateFunctionDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateFunctionDefinition - Arguments for method CreateFunctionDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunctionDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateFunctionDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunctionDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateFunctionDefinitionResponse =
      $greengrass->CreateFunctionDefinition(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        DefaultConfig => {
          Execution => {
            IsolationMode => 'GreengrassContainer'
            ,    # values: GreengrassContainer, NoContainer; OPTIONAL
            RunAs => {
              Gid => 1,    # OPTIONAL
              Uid => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Functions => [
          {
            Id                    => 'My__string',
            FunctionArn           => 'My__string',
            FunctionConfiguration => {
              EncodingType => 'binary',    # values: binary, json; OPTIONAL
              Environment  => {
                AccessSysfs => 1,          # OPTIONAL
                Execution   => {
                  IsolationMode => 'GreengrassContainer'
                  ,    # values: GreengrassContainer, NoContainer; OPTIONAL
                  RunAs => {
                    Gid => 1,    # OPTIONAL
                    Uid => 1,    # OPTIONAL
                  },    # OPTIONAL
                },    # OPTIONAL
                ResourceAccessPolicies => [
                  {
                    ResourceId => 'My__string',
                    Permission => 'ro',           # values: ro, rw; OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
                Variables => { 'My__string' => 'My__string', },    # OPTIONAL
              },    # OPTIONAL
              ExecArgs   => 'My__string',
              Executable => 'My__string',
              MemorySize => 1,              # OPTIONAL
              Pinned     => 1,              # OPTIONAL
              Timeout    => 1,              # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',                         # OPTIONAL
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateFunctionDefinitionResponse->Arn;
    my $CreationTimestamp =
      $CreateFunctionDefinitionResponse->CreationTimestamp;
    my $Id = $CreateFunctionDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateFunctionDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $CreateFunctionDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $CreateFunctionDefinitionResponse->LatestVersionArn;
    my $Name             = $CreateFunctionDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::CreateFunctionDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateFunctionDefinition>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => L<Paws::Greengrass::FunctionDefinitionVersion>

Information about the initial version of the function definition.



=head2 Name => Str

The name of the function definition.



=head2 Tags => L<Paws::Greengrass::Tags>

Tag(s) to add to the new resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunctionDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

