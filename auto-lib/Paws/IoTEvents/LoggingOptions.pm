# Generated from default/object.tt
package Paws::IoTEvents::LoggingOptions;
  use Moo;
  use Types::Standard qw/ArrayRef Bool Str/;
  use Paws::IoTEvents::Types qw/IoTEvents_DetectorDebugOption/;
  has DetectorDebugOptions => (is => 'ro', isa => ArrayRef[IoTEvents_DetectorDebugOption]);
  has Enabled => (is => 'ro', isa => Bool, required => 1);
  has Level => (is => 'ro', isa => Str, required => 1);
  has RoleArn => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'Level' => {
                            'type' => 'Str'
                          },
               'Enabled' => {
                              'type' => 'Bool'
                            },
               'DetectorDebugOptions' => {
                                           'class' => 'Paws::IoTEvents::DetectorDebugOption',
                                           'type' => 'ArrayRef[IoTEvents_DetectorDebugOption]'
                                         }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'Level' => 'level',
                       'Enabled' => 'enabled',
                       'DetectorDebugOptions' => 'detectorDebugOptions'
                     },
  'IsRequired' => {
                    'RoleArn' => 1,
                    'Level' => 1,
                    'Enabled' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::LoggingOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::LoggingOptions object:

  $service_obj->Method(Att1 => { DetectorDebugOptions => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::LoggingOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->DetectorDebugOptions

=head1 DESCRIPTION

The values of the AWS IoT Events logging options.

=head1 ATTRIBUTES


=head2 DetectorDebugOptions => ArrayRef[IoTEvents_DetectorDebugOption]

  Information that identifies those detector models and their detectors
(instances) for which the logging level is given.


=head2 B<REQUIRED> Enabled => Bool

  If TRUE, logging is enabled for AWS IoT Events.


=head2 B<REQUIRED> Level => Str

  The logging level. Currently, only "ERROR" is supported.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that grants permission to AWS IoT Events to perform
logging.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

