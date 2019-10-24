# Generated from json/callargs_class.tt

package Paws::SSM::UpdateMaintenanceWindowTarget;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::SSM::Types qw/SSM_Target/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has OwnerInformation => (is => 'ro', isa => Str, predicate => 1);
  has Replace => (is => 'ro', isa => Bool, predicate => 1);
  has Targets => (is => 'ro', isa => ArrayRef[SSM_Target], predicate => 1);
  has WindowId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has WindowTargetId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateMaintenanceWindowTarget');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::SSM::UpdateMaintenanceWindowTargetResult');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Replace' => {
                              'type' => 'Bool'
                            },
               'Targets' => {
                              'class' => 'Paws::SSM::Target',
                              'type' => 'ArrayRef[SSM_Target]'
                            },
               'WindowTargetId' => {
                                     'type' => 'Str'
                                   },
               'WindowId' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'OwnerInformation' => {
                                       'type' => 'Str'
                                     }
             },
  'IsRequired' => {
                    'WindowTargetId' => 1,
                    'WindowId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowTarget - Arguments for method UpdateMaintenanceWindowTarget on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMaintenanceWindowTarget on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method UpdateMaintenanceWindowTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMaintenanceWindowTarget.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $UpdateMaintenanceWindowTargetResult =
      $ssm->UpdateMaintenanceWindowTarget(
      WindowId         => 'MyMaintenanceWindowId',
      WindowTargetId   => 'MyMaintenanceWindowTargetId',
      Description      => 'MyMaintenanceWindowDescription',    # OPTIONAL
      Name             => 'MyMaintenanceWindowName',           # OPTIONAL
      OwnerInformation => 'MyOwnerInformation',                # OPTIONAL
      Replace          => 1,                                   # OPTIONAL
      Targets          => [
        {
          Key => 'MyTargetKey',                  # min: 1, max: 128; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],                                         # OPTIONAL
      );

    # Results:
    my $Description = $UpdateMaintenanceWindowTargetResult->Description;
    my $Name        = $UpdateMaintenanceWindowTargetResult->Name;
    my $OwnerInformation =
      $UpdateMaintenanceWindowTargetResult->OwnerInformation;
    my $Targets        = $UpdateMaintenanceWindowTargetResult->Targets;
    my $WindowId       = $UpdateMaintenanceWindowTargetResult->WindowId;
    my $WindowTargetId = $UpdateMaintenanceWindowTargetResult->WindowTargetId;

    # Returns a L<Paws::SSM::UpdateMaintenanceWindowTargetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/UpdateMaintenanceWindowTarget>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for the update.



=head2 Name => Str

A name for the update.



=head2 OwnerInformation => Str

User-provided value that will be included in any CloudWatch events
raised while running tasks for these targets in this maintenance
window.



=head2 Replace => Bool

If True, then all fields that are required by the
RegisterTargetWithMaintenanceWindow action are also required for this
API request. Optional fields that are not specified are set to null.



=head2 Targets => ArrayRef[SSM_Target]

The targets to add or replace.



=head2 B<REQUIRED> WindowId => Str

The maintenance window ID with which to modify the target.



=head2 B<REQUIRED> WindowTargetId => Str

The target ID to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMaintenanceWindowTarget in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

