
package Paws::Greengrass::GetResourceDefinitionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_ResourceDefinitionVersion/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Definition => (is => 'ro', isa => Greengrass_ResourceDefinitionVersion);
  has Id => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Version' => {
                              'type' => 'Str'
                            },
               'Definition' => {
                                 'class' => 'Paws::Greengrass::ResourceDefinitionVersion',
                                 'type' => 'Greengrass_ResourceDefinitionVersion'
                               },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetResourceDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Arn of the resource definition version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the resource definition
version was created.


=head2 Definition => Greengrass_ResourceDefinitionVersion

Information about the definition.


=head2 Id => Str

The ID of the resource definition version.


=head2 Version => Str

The version of the resource definition version.


=head2 _request_id => Str


=cut

