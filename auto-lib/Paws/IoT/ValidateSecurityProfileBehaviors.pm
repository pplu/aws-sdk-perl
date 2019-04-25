
package Paws::IoT::ValidateSecurityProfileBehaviors;
  use Moose;
  has Behaviors => (is => 'ro', isa => 'ArrayRef[Paws::IoT::Behavior]', traits => ['NameInRequest'], request_name => 'behaviors', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ValidateSecurityProfileBehaviors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/security-profile-behaviors/validate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ValidateSecurityProfileBehaviorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ValidateSecurityProfileBehaviors - Arguments for method ValidateSecurityProfileBehaviors on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ValidateSecurityProfileBehaviors on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method ValidateSecurityProfileBehaviors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ValidateSecurityProfileBehaviors.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $ValidateSecurityProfileBehaviorsResponse =
      $iot->ValidateSecurityProfileBehaviors(
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

      );

    # Results:
    my $Valid = $ValidateSecurityProfileBehaviorsResponse->Valid;
    my $ValidationErrors =
      $ValidateSecurityProfileBehaviorsResponse->ValidationErrors;

    # Returns a L<Paws::IoT::ValidateSecurityProfileBehaviorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/ValidateSecurityProfileBehaviors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Behaviors => ArrayRef[L<Paws::IoT::Behavior>]

Specifies the behaviors that, when violated by a device (thing), cause
an alert.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ValidateSecurityProfileBehaviors in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

