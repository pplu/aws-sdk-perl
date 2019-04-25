
package Paws::IoT::CreateSecurityProfile;
  use Moose;
  has AlertTargets => (is => 'ro', isa => 'Paws::IoT::AlertTargets', traits => ['NameInRequest'], request_name => 'alertTargets');
  has Behaviors => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Behavior]', traits => ['NameInRequest'], request_name => 'behaviors', required => 1);
  has SecurityProfileDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityProfileDescription');
  has SecurityProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'securityProfileName', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSecurityProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profiles/{securityProfileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateSecurityProfileResponse');
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
      Behaviors => [
        {
          Name     => 'MyBehaviorName',    # min: 1, max: 128
          Criteria => {
            ComparisonOperator => 'less-than'
            , # values: less-than, less-than-equals, greater-than, greater-than-equals, in-cidr-set, not-in-cidr-set, in-port-set, not-in-port-set; OPTIONAL
            DurationSeconds => 1,    # OPTIONAL
            Value           => {
              Cidrs => [
                'MyCidr', ...        # min: 2, max: 43
              ],                     # OPTIONAL
              Count => 1,            # OPTIONAL
              Ports => [
                1, ...               # max: 65535
              ],                     # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Metric => 'MyBehaviorMetric',    # OPTIONAL
        },
        ...
      ],
      SecurityProfileName => 'MySecurityProfileName',
      AlertTargets        => {
        'SNS' => {
          AlertTargetArn => 'MyAlertTargetArn',
          RoleArn        => 'MyRoleArn',          # min: 20, max: 2048

        },    # key: values: SNS
      },    # OPTIONAL
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


=head2 AlertTargets => L<Paws::IoT::AlertTargets>

Specifies the destinations to which alerts are sent. (Alerts are always
sent to the console.) Alerts are generated when a device (thing)
violates a behavior.



=head2 B<REQUIRED> Behaviors => ArrayRef[L<Paws::IoT::Behavior>]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.



=head2 SecurityProfileDescription => Str

A description of the security profile.



=head2 B<REQUIRED> SecurityProfileName => Str

The name you are giving to the security profile.



=head2 Tags => ArrayRef[L<Paws::IoT::Tag>]

Metadata which can be used to manage the security profile.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSecurityProfile in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

