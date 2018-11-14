
package Paws::RedShift::ModifyClusterMaintenance;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DeferMaintenance => (is => 'ro', isa => 'Bool');
  has DeferMaintenanceDuration => (is => 'ro', isa => 'Int');
  has DeferMaintenanceEndTime => (is => 'ro', isa => 'Str');
  has DeferMaintenanceIdentifier => (is => 'ro', isa => 'Str');
  has DeferMaintenanceStartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterMaintenance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyClusterMaintenanceResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterMaintenanceResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyClusterMaintenance - Arguments for method ModifyClusterMaintenance on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClusterMaintenance on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyClusterMaintenance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClusterMaintenance.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyClusterMaintenanceResult = $redshift->ModifyClusterMaintenance(
      ClusterIdentifier          => 'MyString',
      DeferMaintenance           => 1,                        # OPTIONAL
      DeferMaintenanceDuration   => 1,                        # OPTIONAL
      DeferMaintenanceEndTime    => '1970-01-01T01:00:00',    # OPTIONAL
      DeferMaintenanceIdentifier => 'MyString',               # OPTIONAL
      DeferMaintenanceStartTime  => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $Cluster = $ModifyClusterMaintenanceResult->Cluster;

    # Returns a L<Paws::RedShift::ModifyClusterMaintenanceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyClusterMaintenance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

A unique identifier for the cluster.



=head2 DeferMaintenance => Bool

A boolean indicating whether to enable the deferred maintenance window.



=head2 DeferMaintenanceDuration => Int

An integer indicating the duration of the maintenance window in days.
If you specify a duration, you can't specify an end time. The duration
must be 14 days or less.



=head2 DeferMaintenanceEndTime => Str

A timestamp indicating end time for the deferred maintenance window. If
you specify an end time, you can't specify a duration.



=head2 DeferMaintenanceIdentifier => Str

A unique identifier for the deferred maintenance window.



=head2 DeferMaintenanceStartTime => Str

A timestamp indicating the start time for the deferred maintenance
window.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClusterMaintenance in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

