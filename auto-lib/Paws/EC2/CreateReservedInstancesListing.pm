
package Paws::EC2::CreateReservedInstancesListing;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' , required => 1);
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'instanceCount' , required => 1);
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PriceScheduleSpecification]', traits => ['NameInRequest'], request_name => 'priceSchedules' , required => 1);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reservedInstancesId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReservedInstancesListing');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateReservedInstancesListingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateReservedInstancesListing - Arguments for method CreateReservedInstancesListing on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReservedInstancesListing on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateReservedInstancesListing.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReservedInstancesListing.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateReservedInstancesListingResult =
      $ec2->CreateReservedInstancesListing(
      ClientToken    => 'MyString',
      InstanceCount  => 1,
      PriceSchedules => [
        {
          CurrencyCode => 'USD',    # values: USD; OPTIONAL
          Price        => 1,        # OPTIONAL
          Term         => 1,        # OPTIONAL
        },
        ...
      ],
      ReservedInstancesId => 'MyString',

      );

    # Results:
    my $ReservedInstancesListings =
      $CreateReservedInstancesListingResult->ReservedInstancesListings;

    # Returns a L<Paws::EC2::CreateReservedInstancesListingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateReservedInstancesListing>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
your listings. This helps avoid duplicate listings. For more
information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> InstanceCount => Int

The number of instances that are a part of a Reserved Instance account
to be listed in the Reserved Instance Marketplace. This number should
be less than or equal to the instance count associated with the
Reserved Instance ID specified in this call.



=head2 B<REQUIRED> PriceSchedules => ArrayRef[L<Paws::EC2::PriceScheduleSpecification>]

A list specifying the price of the Standard Reserved Instance for each
month remaining in the Reserved Instance term.



=head2 B<REQUIRED> ReservedInstancesId => Str

The ID of the active Standard Reserved Instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReservedInstancesListing in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

