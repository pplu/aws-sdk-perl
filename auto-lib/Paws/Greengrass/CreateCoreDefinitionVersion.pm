
package Paws::Greengrass::CreateCoreDefinitionVersion;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Core/;
  has AmznClientToken => (is => 'ro', isa => Str, predicate => 1);
  has CoreDefinitionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Cores => (is => 'ro', isa => ArrayRef[Greengrass_Core], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCoreDefinitionVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/greengrass/definition/cores/{CoreDefinitionId}/versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Greengrass::CreateCoreDefinitionVersionResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CoreDefinitionId' => {
                                       'type' => 'Str'
                                     },
               'Cores' => {
                            'class' => 'Paws::Greengrass::Core',
                            'type' => 'ArrayRef[Greengrass_Core]'
                          },
               'AmznClientToken' => {
                                      'type' => 'Str'
                                    }
             },
  'ParamInURI' => {
                    'CoreDefinitionId' => 'CoreDefinitionId'
                  },
  'ParamInHeader' => {
                       'AmznClientToken' => 'X-Amzn-Client-Token'
                     },
  'IsRequired' => {
                    'CoreDefinitionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateCoreDefinitionVersion - Arguments for method CreateCoreDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCoreDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method CreateCoreDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCoreDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $CreateCoreDefinitionVersionResponse =
      $greengrass->CreateCoreDefinitionVersion(
      CoreDefinitionId => 'My__string',
      AmznClientToken  => 'My__string',    # OPTIONAL
      Cores            => [
        {
          CertificateArn => 'My__string',
          Id             => 'My__string',
          SyncShadow     => 1,              # OPTIONAL
          ThingArn       => 'My__string',
        },
        ...
      ],                                    # OPTIONAL
      );

    # Results:
    my $Arn = $CreateCoreDefinitionVersionResponse->Arn;
    my $CreationTimestamp =
      $CreateCoreDefinitionVersionResponse->CreationTimestamp;
    my $Id      = $CreateCoreDefinitionVersionResponse->Id;
    my $Version = $CreateCoreDefinitionVersionResponse->Version;

    # Returns a L<Paws::Greengrass::CreateCoreDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/CreateCoreDefinitionVersion>

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

A client token used to correlate requests and responses.



=head2 B<REQUIRED> CoreDefinitionId => Str

The ID of the core definition.



=head2 Cores => ArrayRef[Greengrass_Core]

A list of cores in the core definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCoreDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

