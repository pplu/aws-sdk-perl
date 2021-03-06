# Generated by default/object.tt
package Paws::CostExplorer::AnomalyMonitor;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has DimensionalValueCount => (is => 'ro', isa => 'Int');
  has LastEvaluatedDate => (is => 'ro', isa => 'Str');
  has LastUpdatedDate => (is => 'ro', isa => 'Str');
  has MonitorArn => (is => 'ro', isa => 'Str');
  has MonitorDimension => (is => 'ro', isa => 'Str');
  has MonitorName => (is => 'ro', isa => 'Str', required => 1);
  has MonitorSpecification => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has MonitorType => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::AnomalyMonitor

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CostExplorer::AnomalyMonitor object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., MonitorType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CostExplorer::AnomalyMonitor object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

This object continuously inspects your account's cost data for
anomalies, based on C<MonitorType> and C<MonitorSpecification>. The
content consists of detailed metadata and the current status of the
monitor object.

=head1 ATTRIBUTES


=head2 CreationDate => Str

The date when the monitor was created.


=head2 DimensionalValueCount => Int

The value for evaluated dimensions.


=head2 LastEvaluatedDate => Str

The date when the monitor last evaluated for anomalies.


=head2 LastUpdatedDate => Str

The date when the monitor was last updated.


=head2 MonitorArn => Str

The Amazon Resource Name (ARN) value.


=head2 MonitorDimension => Str

The dimensions to evaluate.


=head2 B<REQUIRED> MonitorName => Str

The name of the monitor.


=head2 MonitorSpecification => L<Paws::CostExplorer::Expression>




=head2 B<REQUIRED> MonitorType => Str

The possible type values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

