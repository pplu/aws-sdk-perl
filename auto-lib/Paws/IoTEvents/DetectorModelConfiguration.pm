# Generated from default/object.tt
package Paws::IoTEvents::DetectorModelConfiguration;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEvents::Types qw//;
  has CreationTime => (is => 'ro', isa => Str);
  has DetectorModelArn => (is => 'ro', isa => Str);
  has DetectorModelDescription => (is => 'ro', isa => Str);
  has DetectorModelName => (is => 'ro', isa => Str);
  has DetectorModelVersion => (is => 'ro', isa => Str);
  has EvaluationMethod => (is => 'ro', isa => Str);
  has Key => (is => 'ro', isa => Str);
  has LastUpdateTime => (is => 'ro', isa => Str);
  has RoleArn => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   },
               'DetectorModelArn' => {
                                       'type' => 'Str'
                                     },
               'DetectorModelVersion' => {
                                           'type' => 'Str'
                                         },
               'EvaluationMethod' => {
                                       'type' => 'Str'
                                     },
               'RoleArn' => {
                              'type' => 'Str'
                            },
               'DetectorModelName' => {
                                        'type' => 'Str'
                                      },
               'DetectorModelDescription' => {
                                               'type' => 'Str'
                                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'Key' => {
                          'type' => 'Str'
                        }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'LastUpdateTime' => 'lastUpdateTime',
                       'EvaluationMethod' => 'evaluationMethod',
                       'DetectorModelVersion' => 'detectorModelVersion',
                       'DetectorModelArn' => 'detectorModelArn',
                       'CreationTime' => 'creationTime',
                       'Key' => 'key',
                       'DetectorModelDescription' => 'detectorModelDescription',
                       'RoleArn' => 'roleArn',
                       'DetectorModelName' => 'detectorModelName'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTEvents::DetectorModelConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEvents::DetectorModelConfiguration object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEvents::DetectorModelConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

Information about how the detector model is configured.

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The time the detector model was created.


=head2 DetectorModelArn => Str

  The ARN of the detector model.


=head2 DetectorModelDescription => Str

  A brief description of the detector model.


=head2 DetectorModelName => Str

  The name of the detector model.


=head2 DetectorModelVersion => Str

  The version of the detector model.


=head2 EvaluationMethod => Str

  When set to C<SERIAL>, variables are updated and event conditions
evaluated in the order that the events are defined. When set to
C<BATCH>, variables are updated and events performed only after all
event conditions are evaluated.


=head2 Key => Str

  The input attribute key used to identify a device or system to create a
detector (an instance of the detector model) and then to route each
input received to the appropriate detector (instance). This parameter
uses a JSON-path expression to specify the attribute-value pair in the
message payload of each input that is used to identify the device
associated with the input.


=head2 LastUpdateTime => Str

  The time the detector model was last updated.


=head2 RoleArn => Str

  The ARN of the role that grants permission to AWS IoT Events to perform
its operations.


=head2 Status => Str

  The status of the detector model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

