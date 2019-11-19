# Generated from json/callargs_class.tt

package Paws::WorkSpaces::ModifySelfservicePermissions;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_SelfservicePermissions/;
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has SelfservicePermissions => (is => 'ro', isa => WorkSpaces_SelfservicePermissions, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ModifySelfservicePermissions');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkSpaces::ModifySelfservicePermissionsResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'SelfservicePermissions' => {
                                             'type' => 'WorkSpaces_SelfservicePermissions',
                                             'class' => 'Paws::WorkSpaces::SelfservicePermissions'
                                           }
             },
  'IsRequired' => {
                    'ResourceId' => 1,
                    'SelfservicePermissions' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifySelfservicePermissions - Arguments for method ModifySelfservicePermissions on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySelfservicePermissions on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifySelfservicePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySelfservicePermissions.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifySelfservicePermissionsResult =
      $workspaces->ModifySelfservicePermissions(
      ResourceId             => 'MyDirectoryId',
      SelfservicePermissions => {
        ChangeComputeType  => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
        IncreaseVolumeSize => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
        RebuildWorkspace   => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
        RestartWorkspace   => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
        SwitchRunningMode  => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifySelfservicePermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The identifier of the directory.



=head2 B<REQUIRED> SelfservicePermissions => WorkSpaces_SelfservicePermissions

The permissions to enable or disable self-service capabilities.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySelfservicePermissions in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

