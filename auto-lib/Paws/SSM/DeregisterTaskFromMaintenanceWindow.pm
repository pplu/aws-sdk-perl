
package Paws::SSM::DeregisterTaskFromMaintenanceWindow;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str', required => 1);
  has WindowTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterTaskFromMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeregisterTaskFromMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeregisterTaskFromMaintenanceWindow - Arguments for method DeregisterTaskFromMaintenanceWindow on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterTaskFromMaintenanceWindow on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeregisterTaskFromMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterTaskFromMaintenanceWindow.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeregisterTaskFromMaintenanceWindowResult =
      $ssm->DeregisterTaskFromMaintenanceWindow(
      WindowId     => 'MyMaintenanceWindowId',
      WindowTaskId => 'MyMaintenanceWindowTaskId',

      );

    # Results:
    my $WindowId     = $DeregisterTaskFromMaintenanceWindowResult->WindowId;
    my $WindowTaskId = $DeregisterTaskFromMaintenanceWindowResult->WindowTaskId;

    # Returns a L<Paws::SSM::DeregisterTaskFromMaintenanceWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeregisterTaskFromMaintenanceWindow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WindowId => Str

The ID of the Maintenance Window the task should be removed from.



=head2 B<REQUIRED> WindowTaskId => Str

The ID of the task to remove from the Maintenance Window.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterTaskFromMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

