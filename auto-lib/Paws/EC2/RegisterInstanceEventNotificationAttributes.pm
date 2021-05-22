
package Paws::EC2::RegisterInstanceEventNotificationAttributes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceTagAttribute => (is => 'ro', isa => 'Paws::EC2::RegisterInstanceTagAttributeRequest');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstanceEventNotificationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RegisterInstanceEventNotificationAttributesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RegisterInstanceEventNotificationAttributes - Arguments for method RegisterInstanceEventNotificationAttributes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterInstanceEventNotificationAttributes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method RegisterInstanceEventNotificationAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterInstanceEventNotificationAttributes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $RegisterInstanceEventNotificationAttributesResult =
      $ec2->RegisterInstanceEventNotificationAttributes(
      DryRun               => 1,    # OPTIONAL
      InstanceTagAttribute => {
        IncludeAllTagsOfInstance => 1,
        InstanceTagKeys          => [ 'MyString', ... ],    # OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $InstanceTagAttribute =
      $RegisterInstanceEventNotificationAttributesResult->InstanceTagAttribute;

# Returns a L<Paws::EC2::RegisterInstanceEventNotificationAttributesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/RegisterInstanceEventNotificationAttributes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InstanceTagAttribute => L<Paws::EC2::RegisterInstanceTagAttributeRequest>

Information about the tag keys to register.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterInstanceEventNotificationAttributes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

