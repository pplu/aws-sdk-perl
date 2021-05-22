
package Paws::CostExplorer::DeleteAnomalyMonitor;
  use Moose;
  has MonitorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAnomalyMonitor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::DeleteAnomalyMonitorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::DeleteAnomalyMonitor - Arguments for method DeleteAnomalyMonitor on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAnomalyMonitor on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method DeleteAnomalyMonitor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAnomalyMonitor.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $DeleteAnomalyMonitorResponse = $ce->DeleteAnomalyMonitor(
      MonitorArn => 'MyGenericString',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/DeleteAnomalyMonitor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MonitorArn => Str

The unique identifier of the cost anomaly monitor that you want to
delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAnomalyMonitor in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

