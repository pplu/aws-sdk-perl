
package Paws::SSM::DeleteMaintenanceWindow;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeleteMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeleteMaintenanceWindow - Arguments for method DeleteMaintenanceWindow on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMaintenanceWindow on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method DeleteMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMaintenanceWindow.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $DeleteMaintenanceWindowResult = $ssm->DeleteMaintenanceWindow(
      WindowId => 'MyMaintenanceWindowId',

    );

    # Results:
    my $WindowId = $DeleteMaintenanceWindowResult->WindowId;

    # Returns a L<Paws::SSM::DeleteMaintenanceWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/DeleteMaintenanceWindow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WindowId => Str

The ID of the Maintenance Window to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

