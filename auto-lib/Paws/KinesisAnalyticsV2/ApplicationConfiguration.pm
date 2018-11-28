package Paws::KinesisAnalyticsV2::ApplicationConfiguration;
  use Moose;
  has ApplicationCodeConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationCodeConfiguration', required => 1);
  has ApplicationSnapshotConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationSnapshotConfiguration');
  has EnvironmentProperties => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::EnvironmentProperties');
  has FlinkApplicationConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::FlinkApplicationConfiguration');
  has SqlApplicationConfiguration => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SqlApplicationConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ApplicationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ApplicationConfiguration object:

  $service_obj->Method(Att1 => { ApplicationCodeConfiguration => $value, ..., SqlApplicationConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ApplicationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationCodeConfiguration

=head1 DESCRIPTION

Specifies the creation parameters for an Amazon Kinesis Data Analytics
application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationCodeConfiguration => L<Paws::KinesisAnalyticsV2::ApplicationCodeConfiguration>

  The code location and type parameters for a Java-based Kinesis Data
Analytics application.


=head2 ApplicationSnapshotConfiguration => L<Paws::KinesisAnalyticsV2::ApplicationSnapshotConfiguration>

  Describes whether snapshots are enabled for a Java-based Kinesis Data
Analytics application.


=head2 EnvironmentProperties => L<Paws::KinesisAnalyticsV2::EnvironmentProperties>

  Describes execution properties for a Java-based Kinesis Data Analytics
application.


=head2 FlinkApplicationConfiguration => L<Paws::KinesisAnalyticsV2::FlinkApplicationConfiguration>

  The creation and update parameters for a Java-based Kinesis Data
Analytics application.


=head2 SqlApplicationConfiguration => L<Paws::KinesisAnalyticsV2::SqlApplicationConfiguration>

  The creation and update parameters for an SQL-based Kinesis Data
Analytics application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

