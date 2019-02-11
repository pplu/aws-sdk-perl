
package Paws::IoT::UpdateBillingGroup;
  use Moose;
  has BillingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'billingGroupName', required => 1);
  has BillingGroupProperties => (is => 'ro', isa => 'Paws::IoT::BillingGroupProperties', traits => ['NameInRequest'], request_name => 'billingGroupProperties', required => 1);
  has ExpectedVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'expectedVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBillingGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/billing-groups/{billingGroupName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateBillingGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateBillingGroup - Arguments for method UpdateBillingGroup on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBillingGroup on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateBillingGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBillingGroup.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateBillingGroupResponse = $iot->UpdateBillingGroup(
      BillingGroupName       => 'MyBillingGroupName',
      BillingGroupProperties => {
        BillingGroupDescription =>
          'MyBillingGroupDescription',    # max: 2028; OPTIONAL
      },
      ExpectedVersion => 1,               # OPTIONAL
    );

    # Results:
    my $Version = $UpdateBillingGroupResponse->Version;

    # Returns a L<Paws::IoT::UpdateBillingGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateBillingGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BillingGroupName => Str

The name of the billing group.



=head2 B<REQUIRED> BillingGroupProperties => L<Paws::IoT::BillingGroupProperties>

The properties of the billing group.



=head2 ExpectedVersion => Int

The expected version of the billing group. If the version of the
billing group does not match the expected version specified in the
request, the C<UpdateBillingGroup> request is rejected with a
C<VersionConflictException>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBillingGroup in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

