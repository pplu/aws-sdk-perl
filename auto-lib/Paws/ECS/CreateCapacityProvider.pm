
package Paws::ECS::CreateCapacityProvider;
  use Moose;
  has AutoScalingGroupProvider => (is => 'ro', isa => 'Paws::ECS::AutoScalingGroupProvider', traits => ['NameInRequest'], request_name => 'autoScalingGroupProvider' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', traits => ['NameInRequest'], request_name => 'tags' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCapacityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::CreateCapacityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateCapacityProvider - Arguments for method CreateCapacityProvider on L<Paws::ECS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCapacityProvider on the
L<Amazon EC2 Container Service|Paws::ECS> service. Use the attributes of this class
as arguments to method CreateCapacityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCapacityProvider.

=head1 SYNOPSIS

    my $ecs = Paws->service('ECS');
    my $CreateCapacityProviderResponse = $ecs->CreateCapacityProvider(
      AutoScalingGroupProvider => {
        AutoScalingGroupArn => 'MyString',
        ManagedScaling      => {
          MaximumScalingStepSize => 1,    # min: 1, max: 10000; OPTIONAL
          MinimumScalingStepSize => 1,    # min: 1, max: 10000; OPTIONAL
          Status         => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
          TargetCapacity => 1,            # min: 1, max: 100; OPTIONAL
        },    # OPTIONAL
        ManagedTerminationProtection =>
          'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
      },
      Name => 'MyString',
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128; OPTIONAL
          Value => 'MyTagValue',    # max: 256; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CapacityProvider = $CreateCapacityProviderResponse->CapacityProvider;

    # Returns a L<Paws::ECS::CreateCapacityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ecs/CreateCapacityProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroupProvider => L<Paws::ECS::AutoScalingGroupProvider>

The details of the Auto Scaling group for the capacity provider.



=head2 B<REQUIRED> Name => Str

The name of the capacity provider. Up to 255 characters are allowed,
including letters (upper and lowercase), numbers, underscores, and
hyphens. The name cannot be prefixed with "C<aws>", "C<ecs>", or
"C<fargate>".



=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

The metadata that you apply to the capacity provider to help you
categorize and organize them. Each tag consists of a key and an
optional value, both of which you define.

The following basic restrictions apply to tags:

=over

=item *

Maximum number of tags per resource - 50

=item *

For each resource, each tag key must be unique, and each tag key can
have only one value.

=item *

Maximum key length - 128 Unicode characters in UTF-8

=item *

Maximum value length - 256 Unicode characters in UTF-8

=item *

If your tagging schema is used across multiple services and resources,
remember that other services may have restrictions on allowed
characters. Generally allowed characters are: letters, numbers, and
spaces representable in UTF-8, and the following characters: + - = . _
: / @.

=item *

Tag keys and values are case-sensitive.

=item *

Do not use C<aws:>, C<AWS:>, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCapacityProvider in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

