
package Paws::KinesisAnalyticsV2::StopApplication;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Force => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::StopApplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::StopApplication - Arguments for method StopApplication on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopApplication on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method StopApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopApplication.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $StopApplicationResponse = $kinesisanalytics->StopApplication(
      ApplicationName => 'MyApplicationName',
      Force           => 1,                     # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/StopApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the running application to stop.



=head2 Force => Bool

Set to C<true> to force the application to stop. If you set C<Force> to
C<true>, Kinesis Data Analytics stops the application without taking a
snapshot.

Force-stopping your application may lead to data loss or duplication.
To prevent data loss or duplicate processing of data during application
restarts, we recommend you to take frequent snapshots of your
application.

You can only force stop a Flink-based Kinesis Data Analytics
application. You can't force stop a SQL-based Kinesis Data Analytics
application.

The application must be in the C<STARTING>, C<UPDATING>, C<STOPPING>,
C<AUTOSCALING>, or C<RUNNING> status.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopApplication in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

