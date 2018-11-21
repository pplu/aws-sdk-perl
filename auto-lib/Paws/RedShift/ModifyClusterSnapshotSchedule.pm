
package Paws::RedShift::ModifyClusterSnapshotSchedule;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DisassociateSchedule => (is => 'ro', isa => 'Bool');
  has ScheduleIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterSnapshotSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyClusterSnapshotSchedule - Arguments for method ModifyClusterSnapshotSchedule on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClusterSnapshotSchedule on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyClusterSnapshotSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClusterSnapshotSchedule.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    $redshift->ModifyClusterSnapshotSchedule(
      ClusterIdentifier    => 'MyString',
      DisassociateSchedule => 1,             # OPTIONAL
      ScheduleIdentifier   => 'MyString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyClusterSnapshotSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

A unique identifier for the cluster whose snapshot schedule you want to
modify.



=head2 DisassociateSchedule => Bool

A boolean to indicate whether to remove the assoiciation between the
cluster and the schedule.



=head2 ScheduleIdentifier => Str

A unique alphanumeric identifier for the schedule that you want to
associate with the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClusterSnapshotSchedule in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

