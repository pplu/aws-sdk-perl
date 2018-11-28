package Paws::KinesisAnalyticsV2::ParallelismConfigurationDescription;
  use Moose;
  has AutoScalingEnabled => (is => 'ro', isa => 'Bool');
  has ConfigurationType => (is => 'ro', isa => 'Str');
  has CurrentParallelism => (is => 'ro', isa => 'Int');
  has Parallelism => (is => 'ro', isa => 'Int');
  has ParallelismPerKPU => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ParallelismConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ParallelismConfigurationDescription object:

  $service_obj->Method(Att1 => { AutoScalingEnabled => $value, ..., ParallelismPerKPU => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ParallelismConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingEnabled

=head1 DESCRIPTION

Describes parameters for how a Java-based Kinesis Data Analytics
application executes multiple tasks simultaneously.

=head1 ATTRIBUTES


=head2 AutoScalingEnabled => Bool

  Describes whether the Kinesis Data Analytics service can increase the
parallelism of the application in response to increased throughput.


=head2 ConfigurationType => Str

  Describes whether the application uses the default parallelism for the
Kinesis Data Analytics service.


=head2 CurrentParallelism => Int

  Describes the current number of parallel tasks that a Java-based
Kinesis Data Analytics application can perform.


=head2 Parallelism => Int

  Describes the initial number of parallel tasks that a Java-based
Kinesis Data Analytics application can perform.


=head2 ParallelismPerKPU => Int

  Describes the number of parallel tasks that a Java-based Kinesis Data
Analytics application can perform per Kinesis Processing Unit (KPU)
used by the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

