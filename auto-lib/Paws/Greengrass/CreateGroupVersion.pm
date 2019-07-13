
package Paws::Greengrass::CreateGroupVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has ConnectorDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has CoreDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has DeviceDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has FunctionDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'GroupId', required => 1);
  has LoggerDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has ResourceDefinitionVersionArn => (is => 'ro', isa => 'Str');
  has SubscriptionDefinitionVersionArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroupVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/groups/{GroupId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateGroupVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateGroupVersion - Arguments for method CreateGroupVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroupVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateGroupVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroupVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateGroupVersionResponse = $greengrass->CreateGroupVersion(
      GroupId                          => 'My__string',
      AmznClientToken                  => 'My__string',    # OPTIONAL
      ConnectorDefinitionVersionArn    => 'My__string',    # OPTIONAL
      CoreDefinitionVersionArn         => 'My__string',    # OPTIONAL
      DeviceDefinitionVersionArn       => 'My__string',    # OPTIONAL
      FunctionDefinitionVersionArn     => 'My__string',    # OPTIONAL
      LoggerDefinitionVersionArn       => 'My__string',    # OPTIONAL
      ResourceDefinitionVersionArn     => 'My__string',    # OPTIONAL
      SubscriptionDefinitionVersionArn => 'My__string',    # OPTIONAL
    );

    # Results:
    my $Arn               = $CreateGroupVersionResponse->Arn;
    my $CreationTimestamp = $CreateGroupVersionResponse->CreationTimestamp;
    my $Id                = $CreateGroupVersionResponse->Id;
    my $Version           = $CreateGroupVersionResponse->Version;

    # Returns a L<Paws::Greengrass::CreateGroupVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateGroupVersion>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 ConnectorDefinitionVersionArn => Str

The ARN of the connector definition version for this group.



=head2 CoreDefinitionVersionArn => Str

The ARN of the core definition version for this group.



=head2 DeviceDefinitionVersionArn => Str

The ARN of the device definition version for this group.



=head2 FunctionDefinitionVersionArn => Str

The ARN of the function definition version for this group.



=head2 B<REQUIRED> GroupId => Str

The ID of the Greengrass group.



=head2 LoggerDefinitionVersionArn => Str

The ARN of the logger definition version for this group.



=head2 ResourceDefinitionVersionArn => Str

The ARN of the resource definition version for this group.



=head2 SubscriptionDefinitionVersionArn => Str

The ARN of the subscription definition version for this group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroupVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

