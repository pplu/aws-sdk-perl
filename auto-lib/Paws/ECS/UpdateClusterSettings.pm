# Generated from json/callargs_class.tt

package Paws::ECS::UpdateClusterSettings;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECS::Types qw/ECS_ClusterSetting/;
  has Cluster => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Settings => (is => 'ro', isa => ArrayRef[ECS_ClusterSetting], required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateClusterSettings');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ECS::UpdateClusterSettingsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Settings' => 1,
                    'Cluster' => 1
                  },
  'NameInRequest' => {
                       'Settings' => 'settings',
                       'Cluster' => 'cluster'
                     },
  'types' => {
               'Settings' => {
                               'class' => 'Paws::ECS::ClusterSetting',
                               'type' => 'ArrayRef[ECS_ClusterSetting]'
                             },
               'Cluster' => {
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

Paws::ECS::UpdateClusterSettings - Arguments for method UpdateClusterSettings on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateClusterSettings on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method UpdateClusterSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateClusterSettings.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $UpdateClusterSettingsResponse = $ecs->UpdateClusterSettings(
      Cluster  => 'MyString',
      Settings => [
        {
          Name  => 'containerInsights',    # values: containerInsights; OPTIONAL
          Value => 'MyString',
        },
        ...
      ],

    );

    # Results:
    my $Cluster = $UpdateClusterSettingsResponse->Cluster;

    # Returns a L<Paws::ECS::UpdateClusterSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/UpdateClusterSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Cluster => Str

The name of the cluster to modify the settings for.



=head2 B<REQUIRED> Settings => ArrayRef[ECS_ClusterSetting]

The setting to use by default for a cluster. This parameter is used to
enable CloudWatch Container Insights for a cluster. If this value is
specified, it will override the C<containerInsights> value set with
PutAccountSetting or PutAccountSettingDefault.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateClusterSettings in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

