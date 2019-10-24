
package Paws::Greengrass::GetResourceDefinition;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw//;
  has ResourceDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetResourceDefinition');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/resources/{ResourceDefinitionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::GetResourceDefinitionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceDefinitionId' => {
                                           'type' => 'Str'
                                         }
             },
  'ParamInURI' => {
                    'ResourceDefinitionId' => 'ResourceDefinitionId'
                  },
  'IsRequired' => {
                    'ResourceDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetResourceDefinition - Arguments for method GetResourceDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetResourceDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetResourceDefinitionResponse = $greengrass->GetResourceDefinition(
      ResourceDefinitionId => 'My__string',

    );

    # Results:
    my $Arn               = $GetResourceDefinitionResponse->Arn;
    my $CreationTimestamp = $GetResourceDefinitionResponse->CreationTimestamp;
    my $Id                = $GetResourceDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $GetResourceDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $GetResourceDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $GetResourceDefinitionResponse->LatestVersionArn;
    my $Name             = $GetResourceDefinitionResponse->Name;
    my $Tags             = $GetResourceDefinitionResponse->Tags;

    # Returns a L<Paws::Greengrass::GetResourceDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetResourceDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceDefinitionId => Str

The ID of the resource definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

