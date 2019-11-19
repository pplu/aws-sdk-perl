
package Paws::IoT::UpdateSecurityProfileResponse;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef Int/;
  use Paws::IoT::Types qw/IoT_AlertTargets IoT_Behavior/;
  has AdditionalMetricsToRetain => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has AlertTargets => (is => 'ro', isa => IoT_AlertTargets);
  has Behaviors => (is => 'ro', isa => ArrayRef[IoT_Behavior]);
  has CreationDate => (is => 'ro', isa => Str);
  has LastModifiedDate => (is => 'ro', isa => Str);
  has SecurityProfileArn => (is => 'ro', isa => Str);
  has SecurityProfileDescription => (is => 'ro', isa => Str);
  has SecurityProfileName => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SecurityProfileDescription' => {
                                                 'type' => 'Str'
                                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LastModifiedDate' => {
                                       'type' => 'Str'
                                     },
               'AlertTargets' => {
                                   'type' => 'IoT_AlertTargets',
                                   'class' => 'Paws::IoT::AlertTargets'
                                 },
               'CreationDate' => {
                                   'type' => 'Str'
                                 },
               'AdditionalMetricsToRetain' => {
                                                'type' => 'ArrayRef[Str|Undef]'
                                              },
               'Behaviors' => {
                                'type' => 'ArrayRef[IoT_Behavior]',
                                'class' => 'Paws::IoT::Behavior'
                              },
               'SecurityProfileArn' => {
                                         'type' => 'Str'
                                       },
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        },
               'Version' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'CreationDate' => 'creationDate',
                       'AdditionalMetricsToRetain' => 'additionalMetricsToRetain',
                       'SecurityProfileDescription' => 'securityProfileDescription',
                       'AlertTargets' => 'alertTargets',
                       'LastModifiedDate' => 'lastModifiedDate',
                       'SecurityProfileName' => 'securityProfileName',
                       'Version' => 'version',
                       'Behaviors' => 'behaviors',
                       'SecurityProfileArn' => 'securityProfileArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateSecurityProfileResponse

=head1 ATTRIBUTES


=head2 AdditionalMetricsToRetain => ArrayRef[Str|Undef]

A list of metrics whose data is retained (stored). By default, data is
retained for any metric used in the security profile's C<behaviors>,
but it is also retained for any metric specified here.


=head2 AlertTargets => IoT_AlertTargets

Where the alerts are sent. (Alerts are always sent to the console.)


=head2 Behaviors => ArrayRef[IoT_Behavior]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.


=head2 CreationDate => Str

The time the security profile was created.


=head2 LastModifiedDate => Str

The time the security profile was last modified.


=head2 SecurityProfileArn => Str

The ARN of the security profile that was updated.


=head2 SecurityProfileDescription => Str

The description of the security profile.


=head2 SecurityProfileName => Str

The name of the security profile that was updated.


=head2 Version => Int

The updated version of the security profile.


=head2 _request_id => Str


=cut

