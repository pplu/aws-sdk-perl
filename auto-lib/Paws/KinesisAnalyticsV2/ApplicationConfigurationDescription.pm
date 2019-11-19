# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::ApplicationConfigurationDescription;
  use Moo;
  use Types::Standard qw//;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_ApplicationCodeConfigurationDescription KinesisAnalyticsV2_FlinkApplicationConfigurationDescription KinesisAnalyticsV2_EnvironmentPropertyDescriptions KinesisAnalyticsV2_RunConfigurationDescription KinesisAnalyticsV2_SqlApplicationConfigurationDescription KinesisAnalyticsV2_ApplicationSnapshotConfigurationDescription/;
  has ApplicationCodeConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_ApplicationCodeConfigurationDescription);
  has ApplicationSnapshotConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_ApplicationSnapshotConfigurationDescription);
  has EnvironmentPropertyDescriptions => (is => 'ro', isa => KinesisAnalyticsV2_EnvironmentPropertyDescriptions);
  has FlinkApplicationConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_FlinkApplicationConfigurationDescription);
  has RunConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_RunConfigurationDescription);
  has SqlApplicationConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_SqlApplicationConfigurationDescription);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationSnapshotConfigurationDescription' => {
                                                                  'type' => 'KinesisAnalyticsV2_ApplicationSnapshotConfigurationDescription',
                                                                  'class' => 'Paws::KinesisAnalyticsV2::ApplicationSnapshotConfigurationDescription'
                                                                },
               'SqlApplicationConfigurationDescription' => {
                                                             'class' => 'Paws::KinesisAnalyticsV2::SqlApplicationConfigurationDescription',
                                                             'type' => 'KinesisAnalyticsV2_SqlApplicationConfigurationDescription'
                                                           },
               'EnvironmentPropertyDescriptions' => {
                                                      'class' => 'Paws::KinesisAnalyticsV2::EnvironmentPropertyDescriptions',
                                                      'type' => 'KinesisAnalyticsV2_EnvironmentPropertyDescriptions'
                                                    },
               'FlinkApplicationConfigurationDescription' => {
                                                               'class' => 'Paws::KinesisAnalyticsV2::FlinkApplicationConfigurationDescription',
                                                               'type' => 'KinesisAnalyticsV2_FlinkApplicationConfigurationDescription'
                                                             },
               'ApplicationCodeConfigurationDescription' => {
                                                              'type' => 'KinesisAnalyticsV2_ApplicationCodeConfigurationDescription',
                                                              'class' => 'Paws::KinesisAnalyticsV2::ApplicationCodeConfigurationDescription'
                                                            },
               'RunConfigurationDescription' => {
                                                  'type' => 'KinesisAnalyticsV2_RunConfigurationDescription',
                                                  'class' => 'Paws::KinesisAnalyticsV2::RunConfigurationDescription'
                                                }
             }
}
;
    return $Params_map;
  }


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


=head2 ApplicationCodeConfigurationDescription => KinesisAnalyticsV2_ApplicationCodeConfigurationDescription

  The details about the application code for a Java-based Kinesis Data
Analytics application.


=head2 ApplicationSnapshotConfigurationDescription => KinesisAnalyticsV2_ApplicationSnapshotConfigurationDescription

  Describes whether snapshots are enabled for a Java-based Kinesis Data
Analytics application.


=head2 EnvironmentPropertyDescriptions => KinesisAnalyticsV2_EnvironmentPropertyDescriptions

  Describes execution properties for a Java-based Kinesis Data Analytics
application.


=head2 FlinkApplicationConfigurationDescription => KinesisAnalyticsV2_FlinkApplicationConfigurationDescription

  The details about a Java-based Kinesis Data Analytics application.


=head2 RunConfigurationDescription => KinesisAnalyticsV2_RunConfigurationDescription

  The details about the starting properties for a Kinesis Data Analytics
application.


=head2 SqlApplicationConfigurationDescription => KinesisAnalyticsV2_SqlApplicationConfigurationDescription

  The details about inputs, outputs, and reference data sources for an
SQL-based Kinesis Data Analytics application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

