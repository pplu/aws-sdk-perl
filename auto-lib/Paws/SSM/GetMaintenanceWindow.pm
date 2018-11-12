
package Paws::SSM::GetMaintenanceWindow;
  use Moose;
  has WindowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetMaintenanceWindow - Arguments for method GetMaintenanceWindow on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMaintenanceWindow on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMaintenanceWindow.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetMaintenanceWindowResult = $ssm->GetMaintenanceWindow(
      WindowId => 'MyMaintenanceWindowId',

    );

    # Results:
    my $AllowUnassociatedTargets =
      $GetMaintenanceWindowResult->AllowUnassociatedTargets;
    my $CreatedDate       = $GetMaintenanceWindowResult->CreatedDate;
    my $Cutoff            = $GetMaintenanceWindowResult->Cutoff;
    my $Description       = $GetMaintenanceWindowResult->Description;
    my $Duration          = $GetMaintenanceWindowResult->Duration;
    my $Enabled           = $GetMaintenanceWindowResult->Enabled;
    my $EndDate           = $GetMaintenanceWindowResult->EndDate;
    my $ModifiedDate      = $GetMaintenanceWindowResult->ModifiedDate;
    my $Name              = $GetMaintenanceWindowResult->Name;
    my $NextExecutionTime = $GetMaintenanceWindowResult->NextExecutionTime;
    my $Schedule          = $GetMaintenanceWindowResult->Schedule;
    my $ScheduleTimezone  = $GetMaintenanceWindowResult->ScheduleTimezone;
    my $StartDate         = $GetMaintenanceWindowResult->StartDate;
    my $WindowId          = $GetMaintenanceWindowResult->WindowId;

    # Returns a L<Paws::SSM::GetMaintenanceWindowResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetMaintenanceWindow>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WindowId => Str

The ID of the desired Maintenance Window.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

