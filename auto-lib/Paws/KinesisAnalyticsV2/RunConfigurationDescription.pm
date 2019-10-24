# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::RunConfigurationDescription;
  use Moo;
  use Types::Standard qw//;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_ApplicationRestoreConfiguration/;
  has ApplicationRestoreConfigurationDescription => (is => 'ro', isa => KinesisAnalyticsV2_ApplicationRestoreConfiguration);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ApplicationRestoreConfigurationDescription' => {
                                                                 'class' => 'Paws::KinesisAnalyticsV2::ApplicationRestoreConfiguration',
                                                                 'type' => 'KinesisAnalyticsV2_ApplicationRestoreConfiguration'
                                                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::RunConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::RunConfigurationDescription object:

  $service_obj->Method(Att1 => { ApplicationRestoreConfigurationDescription => $value, ..., ApplicationRestoreConfigurationDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::RunConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationRestoreConfigurationDescription

=head1 DESCRIPTION

Describes the starting properties for a Kinesis Data Analytics
application.

=head1 ATTRIBUTES


=head2 ApplicationRestoreConfigurationDescription => KinesisAnalyticsV2_ApplicationRestoreConfiguration

  Describes the restore behavior of a restarting application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

