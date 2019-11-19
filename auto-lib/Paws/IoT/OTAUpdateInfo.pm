# Generated from default/object.tt
package Paws::IoT::OTAUpdateInfo;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IoT::Types qw/IoT_AdditionalParameterMap IoT_OTAUpdateFile IoT_ErrorInfo IoT_AwsJobExecutionsRolloutConfig/;
  has AdditionalParameters => (is => 'ro', isa => IoT_AdditionalParameterMap);
  has AwsIotJobArn => (is => 'ro', isa => Str);
  has AwsIotJobId => (is => 'ro', isa => Str);
  has AwsJobExecutionsRolloutConfig => (is => 'ro', isa => IoT_AwsJobExecutionsRolloutConfig);
  has CreationDate => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has ErrorInfo => (is => 'ro', isa => IoT_ErrorInfo);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has OtaUpdateArn => (is => 'ro', isa => Str);
  has OtaUpdateFiles => (is => 'ro', isa => ArrayRef[IoT_OTAUpdateFile]);
  has OtaUpdateId => (is => 'ro', isa => Str);
  has OtaUpdateStatus => (is => 'ro', isa => Str);
  has Targets => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has TargetSelection => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'AwsJobExecutionsRolloutConfig' => 'awsJobExecutionsRolloutConfig',
                       'Targets' => 'targets',
                       'OtaUpdateStatus' => 'otaUpdateStatus',
                       'OtaUpdateFiles' => 'otaUpdateFiles',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'OtaUpdateArn' => 'otaUpdateArn',
                       'AdditionalParameters' => 'additionalParameters',
                       'AwsIotJobId' => 'awsIotJobId',
                       'CreationDate' => 'creationDate',
                       'Description' => 'description',
                       'TargetSelection' => 'targetSelection',
                       'AwsIotJobArn' => 'awsIotJobArn',
                       'ErrorInfo' => 'errorInfo',
                       'OtaUpdateId' => 'otaUpdateId'
                     },
  'types' => {
               'Targets' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'OtaUpdateFiles' => {
                                     'type' => 'ArrayRef[IoT_OTAUpdateFile]',
                                     'class' => 'Paws::IoT::OTAUpdateFile'
                                   },
               'OtaUpdateStatus' => {
                                      'type' => 'Str'
                                    },
               'AwsJobExecutionsRolloutConfig' => {
                                                    'type' => 'IoT_AwsJobExecutionsRolloutConfig',
                                                    'class' => 'Paws::IoT::AwsJobExecutionsRolloutConfig'
                                                  },
               'AwsIotJobId' => {
                                  'type' => 'Str'
                                },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'OtaUpdateArn' => {
                                   'type' => 'Str'
                                 },
               'AdditionalParameters' => {
                                           'type' => 'IoT_AdditionalParameterMap',
                                           'class' => 'Paws::IoT::AdditionalParameterMap'
                                         },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'TargetSelection' => {
                                      'type' => 'Str'
                                    },
               'Description' => {
                                  'type' => 'Str'
                                },
               'ErrorInfo' => {
                                'type' => 'IoT_ErrorInfo',
                                'class' => 'Paws::IoT::ErrorInfo'
                              },
               'OtaUpdateId' => {
                                  'type' => 'Str'
                                },
               'AwsIotJobArn' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::OTAUpdateInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::OTAUpdateInfo object:

  $service_obj->Method(Att1 => { AdditionalParameters => $value, ..., TargetSelection => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::OTAUpdateInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalParameters

=head1 DESCRIPTION

Information about an OTA update.

=head1 ATTRIBUTES


=head2 AdditionalParameters => IoT_AdditionalParameterMap

  A collection of name/value pairs


=head2 AwsIotJobArn => Str

  The AWS IoT job ARN associated with the OTA update.


=head2 AwsIotJobId => Str

  The AWS IoT job ID associated with the OTA update.


=head2 AwsJobExecutionsRolloutConfig => IoT_AwsJobExecutionsRolloutConfig

  Configuration for the rollout of OTA updates.


=head2 CreationDate => Str

  The date when the OTA update was created.


=head2 Description => Str

  A description of the OTA update.


=head2 ErrorInfo => IoT_ErrorInfo

  Error information associated with the OTA update.


=head2 LastModifiedDate => Str

  The date when the OTA update was last updated.


=head2 OtaUpdateArn => Str

  The OTA update ARN.


=head2 OtaUpdateFiles => ArrayRef[IoT_OTAUpdateFile]

  A list of files associated with the OTA update.


=head2 OtaUpdateId => Str

  The OTA update ID.


=head2 OtaUpdateStatus => Str

  The status of the OTA update.


=head2 Targets => ArrayRef[Str|Undef]

  The targets of the OTA update.


=head2 TargetSelection => Str

  Specifies whether the OTA update will continue to run (CONTINUOUS), or
will be complete after all those things specified as targets have
completed the OTA update (SNAPSHOT). If continuous, the OTA update may
also be run on a thing when a change is detected in a target. For
example, an OTA update will run on a thing when the thing is added to a
target group, even after the OTA update was completed by all things
originally in the group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

