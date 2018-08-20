
package Paws::IoT::UpdateSecurityProfile;
  use Moose;
  has AlertTargets => (is => 'ro', isa => 'Paws::IoT::AlertTargets', traits => ['NameInRequest'], request_name => 'alertTargets');
  has Behaviors => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Behavior]', traits => ['NameInRequest'], request_name => 'behaviors');
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'expectedVersion');
  has SecurityProfileDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'securityProfileDescription');
  has SecurityProfileName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'securityProfileName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurityProfile');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profiles/{securityProfileName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateSecurityProfileResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateSecurityProfile - Arguments for method UpdateSecurityProfile on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurityProfile on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateSecurityProfile.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurityProfile.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateSecurityProfileResponse = $iot->UpdateSecurityProfile(
      SecurityProfileName => 'MySecurityProfileName',
      AlertTargets        => {
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
      ],                                   # OPTIONAL
      ExpectedVersion            => 1,                                # OPTIONAL
      SecurityProfileDescription => 'MySecurityProfileDescription',   # OPTIONAL
    );

    # Results:
    my $AlertTargets       = $UpdateSecurityProfileResponse->AlertTargets;
    my $Behaviors          = $UpdateSecurityProfileResponse->Behaviors;
    my $CreationDate       = $UpdateSecurityProfileResponse->CreationDate;
    my $LastModifiedDate   = $UpdateSecurityProfileResponse->LastModifiedDate;
    my $SecurityProfileArn = $UpdateSecurityProfileResponse->SecurityProfileArn;
    my $SecurityProfileDescription =
      $UpdateSecurityProfileResponse->SecurityProfileDescription;
    my $SecurityProfileName =
      $UpdateSecurityProfileResponse->SecurityProfileName;
    my $Version = $UpdateSecurityProfileResponse->Version;

    # Returns a L<Paws::IoT::UpdateSecurityProfileResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateSecurityProfile>

=head1 ATTRIBUTES


=head2 AlertTargets => L<Paws::IoT::AlertTargets>

Where the alerts are sent. (Alerts are always sent to the console.)



=head2 Behaviors => ArrayRef[L<Paws::IoT::Behavior>]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.



=head2 ExpectedVersion => Int

The expected version of the security profile. A new version is
generated whenever the security profile is updated. If you specify a
value that is different than the actual version, a
C<VersionConflictException> is thrown.



=head2 SecurityProfileDescription => Str

A description of the security profile.



=head2 B<REQUIRED> SecurityProfileName => Str

The name of the security profile you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurityProfile in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

