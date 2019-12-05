package Paws::ECS::CapacityProvider;
  use Moose;
  has AutoScalingGroupProvider => (is => 'ro', isa => 'Paws::ECS::AutoScalingGroupProvider', request_name => 'autoScalingGroupProvider', traits => ['NameInRequest']);
  has CapacityProviderArn => (is => 'ro', isa => 'Str', request_name => 'capacityProviderArn', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ECS::Tag]', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CapacityProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::CapacityProvider object:

  $service_obj->Method(Att1 => { AutoScalingGroupProvider => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::CapacityProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoScalingGroupProvider

=head1 DESCRIPTION

The details of a capacity provider.

=head1 ATTRIBUTES


=head2 AutoScalingGroupProvider => L<Paws::ECS::AutoScalingGroupProvider>

  The Auto Scaling group settings for the capacity provider.


=head2 CapacityProviderArn => Str

  The Amazon Resource Name (ARN) that identifies the capacity provider.


=head2 Name => Str

  The name of the capacity provider.


=head2 Status => Str

  The current status of the capacity provider. Only capacity providers in
an C<ACTIVE> state can be used in a cluster.


=head2 Tags => ArrayRef[L<Paws::ECS::Tag>]

  The metadata that you apply to the capacity provider to help you
categorize and organize it. Each tag consists of a key and an optional
value, both of which you define.

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

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

