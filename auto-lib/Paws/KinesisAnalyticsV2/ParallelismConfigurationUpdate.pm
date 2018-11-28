package Paws::KinesisAnalyticsV2::ParallelismConfigurationUpdate;
  use Moose;
  has AutoScalingEnabledUpdate => (is => 'ro', isa => 'Bool');
  has ConfigurationTypeUpdate => (is => 'ro', isa => 'Str');
  has ParallelismPerKPUUpdate => (is => 'ro', isa => 'Int');
  has ParallelismUpdate => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ParallelismConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ParallelismConfigurationUpdate object:

  $service_obj->Method(Att1 => { AutoScalingEnabledUpdate => $value, ..., ParallelismUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ParallelismConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingEnabledUpdate

=head1 DESCRIPTION

Describes updates to parameters for how a Java-based Kinesis Data
Analytics application executes multiple tasks simultaneously.

=head1 ATTRIBUTES


=head2 AutoScalingEnabledUpdate => Bool

  Describes updates to whether the Kinesis Data Analytics service can
increase the parallelism of the application in response to increased
throughput.


=head2 ConfigurationTypeUpdate => Str

  Describes updates to whether the application uses the default
parallelism for the Kinesis Data Analytics service, or if a custom
parallelism is used.


=head2 ParallelismPerKPUUpdate => Int

  Describes updates to the number of parallel tasks an application can
perform per Kinesis Processing Unit (KPU) used by the application.


=head2 ParallelismUpdate => Int

  Describes updates to the initial number of parallel tasks an
application can perform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

