
package Paws::SSM::RegisterTargetWithMaintenanceWindow;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerInformation => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]', required => 1);
  has WindowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTargetWithMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::RegisterTargetWithMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterTargetWithMaintenanceWindow - Arguments for method RegisterTargetWithMaintenanceWindow on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTargetWithMaintenanceWindow on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method RegisterTargetWithMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTargetWithMaintenanceWindow.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $RegisterTargetWithMaintenanceWindowResult =
      $ssm->RegisterTargetWithMaintenanceWindow(
      ResourceType => 'INSTANCE',
      Targets      => [
        {
          Key => 'MyTargetKey',                  # min: 1, max: 128; OPTIONAL
          Values => [ 'MyTargetValue', ... ],    # max: 50; OPTIONAL
        },
        ...
      ],
      WindowId         => 'MyMaintenanceWindowId',
      ClientToken      => 'MyClientToken',                     # OPTIONAL
      Description      => 'MyMaintenanceWindowDescription',    # OPTIONAL
      Name             => 'MyMaintenanceWindowName',           # OPTIONAL
      OwnerInformation => 'MyOwnerInformation',                # OPTIONAL
      );

    # Results:
    my $WindowTargetId =
      $RegisterTargetWithMaintenanceWindowResult->WindowTargetId;

    # Returns a L<Paws::SSM::RegisterTargetWithMaintenanceWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/RegisterTargetWithMaintenanceWindow>

=head1 ATTRIBUTES


=head2 ClientToken => Str

User-provided idempotency token.



=head2 Description => Str

An optional description for the target.



=head2 Name => Str

An optional name for the target.



=head2 OwnerInformation => Str

User-provided value that will be included in any CloudWatch events
raised while running tasks for these targets in this Maintenance
Window.



=head2 B<REQUIRED> ResourceType => Str

The type of target being registered with the Maintenance Window.

Valid values are: C<"INSTANCE">

=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::SSM::Target>]

The targets (either instances or tags).

Specify instances using the following format:

C<Key=InstanceIds,Values=E<lt>instance-id-1E<gt>,E<lt>instance-id-2E<gt>>

Specify tags using either of the following formats:

C<Key=tag:E<lt>tag-keyE<gt>,Values=E<lt>tag-value-1E<gt>,E<lt>tag-value-2E<gt>>

C<Key=tag-key,Values=E<lt>tag-key-1E<gt>,E<lt>tag-key-2E<gt>>



=head2 B<REQUIRED> WindowId => Str

The ID of the Maintenance Window the target should be registered with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTargetWithMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

