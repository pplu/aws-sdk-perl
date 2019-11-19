
package Paws::IoT::CreateSecurityProfile;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::IoT::Types qw/IoT_Behavior IoT_AlertTargets IoT_Tag/;
  has AdditionalMetricsToRetain => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has AlertTargets => (is => 'ro', isa => IoT_AlertTargets, predicate => 1);
  has Behaviors => (is => 'ro', isa => ArrayRef[IoT_Behavior], predicate => 1);
  has SecurityProfileDescription => (is => 'ro', isa => Str, predicate => 1);
  has SecurityProfileName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[IoT_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateSecurityProfile');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/security-profiles/{securityProfileName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::CreateSecurityProfileResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'SecurityProfileName' => 'securityProfileName'
                  },
  'IsRequired' => {
                    'SecurityProfileName' => 1
                  },
  'NameInRequest' => {
                       'AdditionalMetricsToRetain' => 'additionalMetricsToRetain',
                       'AlertTargets' => 'alertTargets',
                       'SecurityProfileDescription' => 'securityProfileDescription',
                       'Tags' => 'tags',
                       'Behaviors' => 'behaviors'
                     },
  'types' => {
               'SecurityProfileName' => {
                                          'type' => 'Str'
                                        },
               'Behaviors' => {
                                'type' => 'ArrayRef[IoT_Behavior]',
                                'class' => 'Paws::IoT::Behavior'
                              },
               'AdditionalMetricsToRetain' => {
                                                'type' => 'ArrayRef[Str|Undef]'
                                              },
               'Tags' => {
                           'class' => 'Paws::IoT::Tag',
                           'type' => 'ArrayRef[IoT_Tag]'
                         },
               'SecurityProfileDescription' => {
                                                 'type' => 'Str'
                                               },
               'AlertTargets' => {
                                   'type' => 'IoT_AlertTargets',
                                   'class' => 'Paws::IoT::AlertTargets'
                                 }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateSecurityProfile - Arguments for method CreateSecurityProfile on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSecurityProfile on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateSecurityProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSecurityProfile.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateSecurityProfileResponse = $iot->CreateSecurityProfile(
      SecurityProfileName       => 'MySecurityProfileName',
      AdditionalMetricsToRetain => [ 'MyBehaviorMetric', ... ],    # OPTIONAL
      AlertTargets              => {
        'SNS' => {
          AlertTargetArn => 'MyAlertTargetArn',
          RoleArn        => 'MyRoleArn',          # min: 20, max: 2048

        },    # key: values: SNS
      },    # OPTIONAL
      Behaviors => [
        {
          Name     => 'MyBehaviorName',    # min: 1, max: 128
          Criteria => {
            ComparisonOperator => 'less-than'
            , # values: less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set; OPTIONAL
            ConsecutiveDatapointsToAlarm => 1,    # min: 1, max: 10; OPTIONAL
            ConsecutiveDatapointsToClear => 1,    # min: 1, max: 10; OPTIONAL
            DurationSeconds              => 1,    # OPTIONAL
            StatisticalThreshold         => {
              Statistic => 'MyEvaluationStatistic',    # OPTIONAL
            },    # OPTIONAL
            Value => {
              Cidrs => [
                'MyCidr', ...    # min: 2, max: 43
              ],                 # OPTIONAL
              Count => 1,        # OPTIONAL
              Ports => [
                1, ...           # max: 65535
              ],                 # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Metric => 'MyBehaviorMetric',
        },
        ...
      ],        # OPTIONAL
      SecurityProfileDescription => 'MySecurityProfileDescription',   # OPTIONAL
      Tags                       => [
        {
          Key   => 'MyTagKey',                                        # OPTIONAL
          Value => 'MyTagValue',                                      # OPTIONAL
        },
        ...
      ],                                                              # OPTIONAL
    );

    # Results:
    my $SecurityProfileArn = $CreateSecurityProfileResponse->SecurityProfileArn;
    my $SecurityProfileName =
      $CreateSecurityProfileResponse->SecurityProfileName;

    # Returns a L<Paws::IoT::CreateSecurityProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateSecurityProfile>

=head1 ATTRIBUTES


=head2 AdditionalMetricsToRetain => ArrayRef[Str|Undef]

A list of metrics whose data is retained (stored). By default, data is
retained for any metric used in the profile's C<behaviors>, but it is
also retained for any metric specified here.



=head2 AlertTargets => IoT_AlertTargets

Specifies the destinations to which alerts are sent. (Alerts are always
sent to the console.) Alerts are generated when a device (thing)
violates a behavior.



=head2 Behaviors => ArrayRef[IoT_Behavior]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.



=head2 SecurityProfileDescription => Str

A description of the security profile.



=head2 B<REQUIRED> SecurityProfileName => Str

The name you are giving to the security profile.



=head2 Tags => ArrayRef[IoT_Tag]

Metadata that can be used to manage the security profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityProfile in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

