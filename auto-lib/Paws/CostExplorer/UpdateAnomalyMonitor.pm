
package Paws::CostExplorer::UpdateAnomalyMonitor;
  use Moose;
  has MonitorArn => (is => 'ro', isa => 'Str', required => 1);
  has MonitorName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAnomalyMonitor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::UpdateAnomalyMonitorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateAnomalyMonitor - Arguments for method UpdateAnomalyMonitor on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAnomalyMonitor on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method UpdateAnomalyMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAnomalyMonitor.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $UpdateAnomalyMonitorResponse = $ce->UpdateAnomalyMonitor(
      MonitorArn  => 'MyGenericString',
      MonitorName => 'MyGenericString',    # OPTIONAL
    );

    # Results:
    my $MonitorArn = $UpdateAnomalyMonitorResponse->MonitorArn;

    # Returns a L<Paws::CostExplorer::UpdateAnomalyMonitorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/UpdateAnomalyMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorArn => Str

Cost anomaly monitor Amazon Resource Names (ARNs).



=head2 MonitorName => Str

The new name for the cost anomaly monitor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAnomalyMonitor in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

