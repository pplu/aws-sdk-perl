package Paws::EC2::ReservedInstancesListing;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', xmlname => 'clientToken', traits => ['Unwrapped']);
  has CreateDate => (is => 'ro', isa => 'Str', xmlname => 'createDate', traits => ['Unwrapped']);
  has InstanceCounts => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceCount]', xmlname => 'instanceCounts', traits => ['Unwrapped']);
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PriceSchedule]', xmlname => 'priceSchedules', traits => ['Unwrapped']);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', xmlname => 'reservedInstancesId', traits => ['Unwrapped']);
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', xmlname => 'reservedInstancesListingId', traits => ['Unwrapped']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', traits => ['Unwrapped']);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', traits => ['Unwrapped']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', xmlname => 'tagSet', traits => ['Unwrapped']);
  has UpdateDate => (is => 'ro', isa => 'Str', xmlname => 'updateDate', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstancesListing

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstancesListing object:

  $service_obj->Method(Att1 => { ClientToken => $value, ..., UpdateDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstancesListing object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientToken

=head1 ATTRIBUTES

=head2 ClientToken => Str

  

A unique, case-sensitive key supplied by the client to ensure that the
request is idempotent. For more information, see Ensuring Idempotency.










=head2 CreateDate => Str

  

The time the listing was created.










=head2 InstanceCounts => ArrayRef[Paws::EC2::InstanceCount]

  

The number of instances in this state.










=head2 PriceSchedules => ArrayRef[Paws::EC2::PriceSchedule]

  

The price of the Reserved Instance listing.










=head2 ReservedInstancesId => Str

  

The ID of the Reserved Instance.










=head2 ReservedInstancesListingId => Str

  

The ID of the Reserved Instance listing.










=head2 Status => Str

  

The status of the Reserved Instance listing.










=head2 StatusMessage => Str

  

The reason for the current status of the Reserved Instance listing. The
response can be blank.










=head2 Tags => ArrayRef[Paws::EC2::Tag]

  

Any tags assigned to the resource.










=head2 UpdateDate => Str

  

The last modified timestamp of the listing.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
