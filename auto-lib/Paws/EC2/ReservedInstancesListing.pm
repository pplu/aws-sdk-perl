package Paws::EC2::ReservedInstancesListing;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has CreateDate => (is => 'ro', isa => 'Str', request_name => 'createDate', traits => ['NameInRequest']);
  has InstanceCounts => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceCount]', request_name => 'instanceCounts', traits => ['NameInRequest']);
  has PriceSchedules => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PriceSchedule]', request_name => 'priceSchedules', traits => ['NameInRequest']);
  has ReservedInstancesId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesId', traits => ['NameInRequest']);
  has ReservedInstancesListingId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesListingId', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has UpdateDate => (is => 'ro', isa => 'Str', request_name => 'updateDate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstancesListing

=head1 USAGE

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

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ClientToken => Str

  A unique, case-sensitive key supplied by the client to ensure that the
request is idempotent. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 CreateDate => Str

  The time the listing was created.


=head2 InstanceCounts => ArrayRef[L<Paws::EC2::InstanceCount>]

  The number of instances in this state.


=head2 PriceSchedules => ArrayRef[L<Paws::EC2::PriceSchedule>]

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


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

  Any tags assigned to the resource.


=head2 UpdateDate => Str

  The last modified timestamp of the listing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
