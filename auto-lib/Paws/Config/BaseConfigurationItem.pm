# Generated from default/object.tt
package Paws::Config::BaseConfigurationItem;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Config::Types qw/Config_SupplementaryConfiguration/;
  has AccountId => (is => 'ro', isa => Str);
  has Arn => (is => 'ro', isa => Str);
  has AvailabilityZone => (is => 'ro', isa => Str);
  has AwsRegion => (is => 'ro', isa => Str);
  has Configuration => (is => 'ro', isa => Str);
  has ConfigurationItemCaptureTime => (is => 'ro', isa => Str);
  has ConfigurationItemStatus => (is => 'ro', isa => Str);
  has ConfigurationStateId => (is => 'ro', isa => Str);
  has ResourceCreationTime => (is => 'ro', isa => Str);
  has ResourceId => (is => 'ro', isa => Str);
  has ResourceName => (is => 'ro', isa => Str);
  has ResourceType => (is => 'ro', isa => Str);
  has SupplementaryConfiguration => (is => 'ro', isa => Config_SupplementaryConfiguration);
  has Version => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'AwsRegion' => {
                                'type' => 'Str'
                              },
               'Configuration' => {
                                    'type' => 'Str'
                                  },
               'ConfigurationItemStatus' => {
                                              'type' => 'Str'
                                            },
               'AvailabilityZone' => {
                                       'type' => 'Str'
                                     },
               'ResourceName' => {
                                   'type' => 'Str'
                                 },
               'Version' => {
                              'type' => 'Str'
                            },
               'ConfigurationStateId' => {
                                           'type' => 'Str'
                                         },
               'SupplementaryConfiguration' => {
                                                 'class' => 'Paws::Config::SupplementaryConfiguration',
                                                 'type' => 'Config_SupplementaryConfiguration'
                                               },
               'ResourceType' => {
                                   'type' => 'Str'
                                 },
               'AccountId' => {
                                'type' => 'Str'
                              },
               'ResourceCreationTime' => {
                                           'type' => 'Str'
                                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               'ConfigurationItemCaptureTime' => {
                                                   'type' => 'Str'
                                                 }
             },
  'NameInRequest' => {
                       'ResourceId' => 'resourceId',
                       'AwsRegion' => 'awsRegion',
                       'Configuration' => 'configuration',
                       'ConfigurationItemStatus' => 'configurationItemStatus',
                       'AvailabilityZone' => 'availabilityZone',
                       'ResourceName' => 'resourceName',
                       'Version' => 'version',
                       'ConfigurationStateId' => 'configurationStateId',
                       'SupplementaryConfiguration' => 'supplementaryConfiguration',
                       'ResourceType' => 'resourceType',
                       'AccountId' => 'accountId',
                       'ResourceCreationTime' => 'resourceCreationTime',
                       'Arn' => 'arn',
                       'ConfigurationItemCaptureTime' => 'configurationItemCaptureTime'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::BaseConfigurationItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::BaseConfigurationItem object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::BaseConfigurationItem object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

The detailed configuration of a specified resource.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The 12-digit AWS account ID associated with the resource.


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the resource.


=head2 AvailabilityZone => Str

  The Availability Zone associated with the resource.


=head2 AwsRegion => Str

  The region where the resource resides.


=head2 Configuration => Str

  The description of the resource configuration.


=head2 ConfigurationItemCaptureTime => Str

  The time when the configuration recording was initiated.


=head2 ConfigurationItemStatus => Str

  The configuration item status.


=head2 ConfigurationStateId => Str

  An identifier that indicates the ordering of the configuration items of
a resource.


=head2 ResourceCreationTime => Str

  The time stamp when the resource was created.


=head2 ResourceId => Str

  The ID of the resource (for example., sg-xxxxxx).


=head2 ResourceName => Str

  The custom name of the resource, if available.


=head2 ResourceType => Str

  The type of AWS resource.


=head2 SupplementaryConfiguration => Config_SupplementaryConfiguration

  Configuration attributes that AWS Config returns for certain resource
types to supplement the information returned for the configuration
parameter.


=head2 Version => Str

  The version number of the resource configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

