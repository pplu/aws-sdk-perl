
package Paws::Greengrass::CreateGroup;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has InitialVersion => (is => 'ro', isa => 'Paws::Greengrass::GroupVersion');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateGroup - Arguments for method CreateGroup on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateGroupResponse = $greengrass->CreateGroup(
      AmznClientToken => 'My__string',    # OPTIONAL
      InitialVersion  => {
        ConnectorDefinitionVersionArn    => 'My__string',
        CoreDefinitionVersionArn         => 'My__string',
        DeviceDefinitionVersionArn       => 'My__string',
        FunctionDefinitionVersionArn     => 'My__string',
        LoggerDefinitionVersionArn       => 'My__string',
        ResourceDefinitionVersionArn     => 'My__string',
        SubscriptionDefinitionVersionArn => 'My__string',
      },                                  # OPTIONAL
      Name => 'My__string',               # OPTIONAL
    );

    # Results:
    my $Arn                  = $CreateGroupResponse->Arn;
    my $CreationTimestamp    = $CreateGroupResponse->CreationTimestamp;
    my $Id                   = $CreateGroupResponse->Id;
    my $LastUpdatedTimestamp = $CreateGroupResponse->LastUpdatedTimestamp;
    my $LatestVersion        = $CreateGroupResponse->LatestVersion;
    my $LatestVersionArn     = $CreateGroupResponse->LatestVersionArn;
    my $Name                 = $CreateGroupResponse->Name;

    # Returns a L<Paws::Greengrass::CreateGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateGroup>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 InitialVersion => L<Paws::Greengrass::GroupVersion>

Information about the initial version of the group.



=head2 Name => Str

The name of the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

