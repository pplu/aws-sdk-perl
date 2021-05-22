
package Paws::EC2::ModifyAvailabilityZoneGroup;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has OptInStatus => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyAvailabilityZoneGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyAvailabilityZoneGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyAvailabilityZoneGroup - Arguments for method ModifyAvailabilityZoneGroup on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyAvailabilityZoneGroup on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyAvailabilityZoneGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyAvailabilityZoneGroup.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyAvailabilityZoneGroupResult = $ec2->ModifyAvailabilityZoneGroup(
      GroupName   => 'MyString',
      OptInStatus => 'opted-in',
      DryRun      => 1,            # OPTIONAL
    );

    # Results:
    my $Return = $ModifyAvailabilityZoneGroupResult->Return;

    # Returns a L<Paws::EC2::ModifyAvailabilityZoneGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyAvailabilityZoneGroup>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> GroupName => Str

The name of the Availability Zone group, Local Zone group, or
Wavelength Zone group.



=head2 B<REQUIRED> OptInStatus => Str

Indicates whether you are opted in to the Local Zone group or
Wavelength Zone group. The only valid value is C<opted-in>. You must
contact AWS Support
(https://console.aws.amazon.com/support/home#/case/create%3FissueType=customer-service%26serviceCode=general-info%26getting-started%26categoryCode=using-aws%26services)
to opt out of a Local Zone group, or Wavelength Zone group.

Valid values are: C<"opted-in">, C<"not-opted-in">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyAvailabilityZoneGroup in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

