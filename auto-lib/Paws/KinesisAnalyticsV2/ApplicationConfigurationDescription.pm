package Paws::KinesisAnalyticsV2::ApplicationConfigurationDescription;
  use Moose;
  has ApplicationCodeConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationDescription');
  has ApplicationSnapshotConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationSnapshotConfigurationDescription');
  has EnvironmentPropertyDescriptions => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::EnvironmentPropertyDescriptions');
  has FlinkApplicationConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationDescription');
  has RunConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::RunConfigurationDescription');
  has SqlApplicationConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SqlApplicationConfigurationDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ApplicationConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ApplicationConfigurationDescription object:

  $service_obj->Method(Att1 => { ApplicationCodeConfigurationDescription => $value, ..., SqlApplicationConfigurationDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ApplicationConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationCodeConfigurationDescription

=head1 DESCRIPTION

Describes details about the application code and starting parameters
for an Amazon Kinesis Data Analytics application.

=head1 ATTRIBUTES


=head2 ApplicationCodeConfigurationDescription => L<Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationDescription>

  The details about the application code for a Java-based Kinesis Data
Analytics application.


=head2 ApplicationSnapshotConfigurationDescription => L<Paws::KinesisAnalyticsV2::ApplicationSnapshotConfigurationDescription>

  Describes whether snapshots are enabled for a Java-based Kinesis Data
Analytics application.


=head2 EnvironmentPropertyDescriptions => L<Paws::KinesisAnalyticsV2::EnvironmentPropertyDescriptions>

  Describes execution properties for a Java-based Kinesis Data Analytics
application.


=head2 FlinkApplicationConfigurationDescription => L<Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationDescription>

  The details about a Java-based Kinesis Data Analytics application.


=head2 RunConfigurationDescription => L<Paws::KinesisAnalyticsV2::RunConfigurationDescription>

  The details about the starting properties for a Kinesis Data Analytics
application.


=head2 SqlApplicationConfigurationDescription => L<Paws::KinesisAnalyticsV2::SqlApplicationConfigurationDescription>

  The details about inputs, outputs, and reference data sources for an
SQL-based Kinesis Data Analytics application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

