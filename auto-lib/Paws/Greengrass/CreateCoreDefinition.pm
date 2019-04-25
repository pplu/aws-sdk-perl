
package Paws::Greengrass::CreateCoreDefinition;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has InitialVersion => (is => 'ro', isa => 'Paws::Greengrass::CoreDefinitionVersion');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCoreDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/cores');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateCoreDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateCoreDefinition - Arguments for method CreateCoreDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCoreDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateCoreDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCoreDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateCoreDefinitionResponse = $greengrass->CreateCoreDefinition(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        Cores => [
          {
            CertificateArn => 'My__string',
            Id             => 'My__string',
            SyncShadow     => 1,              # OPTIONAL
            ThingArn       => 'My__string',
          },
          ...
        ],                                    # OPTIONAL
      },    # OPTIONAL
      Name => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateCoreDefinitionResponse->Arn;
    my $CreationTimestamp = $CreateCoreDefinitionResponse->CreationTimestamp;
    my $Id                = $CreateCoreDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $CreateCoreDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $CreateCoreDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $CreateCoreDefinitionResponse->LatestVersionArn;
    my $Name             = $CreateCoreDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::CreateCoreDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateCoreDefinition>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => L<Paws::Greengrass::CoreDefinitionVersion>

Information about the initial version of the core definition.



=head2 Name => Str

The name of the core definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCoreDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

