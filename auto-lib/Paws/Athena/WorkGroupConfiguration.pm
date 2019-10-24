# Generated from default/object.tt
package Paws::Athena::WorkGroupConfiguration;
  use Moo;
  use Types::Standard qw/Int Bool/;
  use Paws::Athena::Types qw/Athena_ResultConfiguration/;
  has BytesScannedCutoffPerQuery => (is => 'ro', isa => Int);
  has EnforceWorkGroupConfiguration => (is => 'ro', isa => Bool);
  has PublishCloudWatchMetricsEnabled => (is => 'ro', isa => Bool);
  has ResultConfiguration => (is => 'ro', isa => Athena_ResultConfiguration);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BytesScannedCutoffPerQuery' => {
                                                 'type' => 'Int'
                                               },
               'ResultConfiguration' => {
                                          'class' => 'Paws::Athena::ResultConfiguration',
                                          'type' => 'Athena_ResultConfiguration'
                                        },
               'PublishCloudWatchMetricsEnabled' => {
                                                      'type' => 'Bool'
                                                    },
               'EnforceWorkGroupConfiguration' => {
                                                    'type' => 'Bool'
                                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::WorkGroupConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Athena::WorkGroupConfiguration object:

  $service_obj->Method(Att1 => { BytesScannedCutoffPerQuery => $value, ..., ResultConfiguration => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Athena::WorkGroupConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BytesScannedCutoffPerQuery

=head1 DESCRIPTION

The configuration of the workgroup, which includes the location in
Amazon S3 where query results are stored, the encryption option, if
any, used for query results, whether the Amazon CloudWatch Metrics are
enabled for the workgroup and whether workgroup settings override query
settings, and the data usage limit for the amount of data scanned per
query, if it is specified. The workgroup settings override is specified
in EnforceWorkGroupConfiguration (true/false) in the
WorkGroupConfiguration. See
WorkGroupConfiguration$EnforceWorkGroupConfiguration.

=head1 ATTRIBUTES


=head2 BytesScannedCutoffPerQuery => Int

  The upper data usage limit (cutoff) for the amount of bytes a single
query in a workgroup is allowed to scan.


=head2 EnforceWorkGroupConfiguration => Bool

  If set to "true", the settings for the workgroup override client-side
settings. If set to "false", client-side settings are used. For more
information, see Workgroup Settings Override Client-Side Settings
(https://docs.aws.amazon.com/athena/latest/ug/workgroups-settings-override.html).


=head2 PublishCloudWatchMetricsEnabled => Bool

  Indicates that the Amazon CloudWatch metrics are enabled for the
workgroup.


=head2 ResultConfiguration => Athena_ResultConfiguration

  The configuration for the workgroup, which includes the location in
Amazon S3 where query results are stored and the encryption option, if
any, used for query results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

