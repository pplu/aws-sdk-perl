# Generated from default/object.tt
package Paws::IoTAnalytics::LoggingOptions;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::IoTAnalytics::Types qw//;
  has Enabled => (is => 'ro', isa => Bool, required => 1);
  has Level => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'Level' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'Enabled' => 'enabled',
                       'RoleArn' => 'roleArn',
                       'Level' => 'level'
                     },
  'IsRequired' => {
                    'Enabled' => 1,
                    'RoleArn' => 1,
                    'Level' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::LoggingOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::LoggingOptions object:

  $service_obj->Method(Att1 => { Enabled => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::LoggingOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->Enabled

=head1 DESCRIPTION

Information about logging options.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Enabled => Bool

  If true, logging is enabled for AWS IoT Analytics.


=head2 B<REQUIRED> Level => Str

  The logging level. Currently, only "ERROR" is supported.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that grants permission to AWS IoT Analytics to
perform logging.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

