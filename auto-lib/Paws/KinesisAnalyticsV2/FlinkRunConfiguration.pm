package Paws::KinesisAnalyticsV2::FlinkRunConfiguration;
  use Moose;
  has AllowNonRestoredState => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::FlinkRunConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::FlinkRunConfiguration object:

  $service_obj->Method(Att1 => { AllowNonRestoredState => $value, ..., AllowNonRestoredState => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::FlinkRunConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowNonRestoredState

=head1 DESCRIPTION

Describes the starting parameters for an Apache Flink-based Kinesis
Data Analytics application.

=head1 ATTRIBUTES


=head2 AllowNonRestoredState => Bool

  When restoring from a savepoint, specifies whether the runtime is
allowed to skip a state that cannot be mapped to the new program. This
will happen if the program is updated between savepoints to remove
stateful parameters, and state data in the savepoint no longer
corresponds to valid application data. For more information, see
Allowing Non-Restored State
(https://ci.apache.org/projects/flink/flink-docs-release-1.8/ops/state/savepoints.html#allowing-non-restored-state)
in the Apache Flink documentation
(https://ci.apache.org/projects/flink/flink-docs-release-1.8/).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

