package Paws::KinesisAnalyticsV2::ApplicationConfigurationUpdate;
  use Moose;
  has ApplicationCodeConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationUpdate');
  has ApplicationSnapshotConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationSnapshotConfigurationUpdate');
  has EnvironmentPropertyUpdates => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::EnvironmentPropertyUpdates');
  has FlinkApplicationConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationUpdate');
  has SqlApplicationConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SqlApplicationConfigurationUpdate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ApplicationConfigurationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ApplicationConfigurationUpdate object:

  $service_obj->Method(Att1 => { ApplicationCodeConfigurationUpdate => $value, ..., SqlApplicationConfigurationUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ApplicationConfigurationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationCodeConfigurationUpdate

=head1 DESCRIPTION

Describes updates to an application's configuration.

=head1 ATTRIBUTES


=head2 ApplicationCodeConfigurationUpdate => L<Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationUpdate>

  Describes updates to a Java-based Kinesis Data Analytics application's
code configuration.


=head2 ApplicationSnapshotConfigurationUpdate => L<Paws::KinesisAnalyticsV2::ApplicationSnapshotConfigurationUpdate>

  Describes whether snapshots are enabled for a Java-based Kinesis Data
Analytics application.


=head2 EnvironmentPropertyUpdates => L<Paws::KinesisAnalyticsV2::EnvironmentPropertyUpdates>

  Describes updates to the environment properties for a Java-based
Kinesis Data Analytics application.


=head2 FlinkApplicationConfigurationUpdate => L<Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationUpdate>

  Describes updates to a Java-based Kinesis Data Analytics application's
configuration.


=head2 SqlApplicationConfigurationUpdate => L<Paws::KinesisAnalyticsV2::SqlApplicationConfigurationUpdate>

  Describes updates to an SQL-based Kinesis Data Analytics application's
configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

