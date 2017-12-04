package Paws::DeviceFarm::OfferingTransaction;
  use Moose;
  has Cost => (is => 'ro', isa => 'Paws::DeviceFarm::MonetaryAmount', request_name => 'cost', traits => ['NameInRequest']);
  has CreatedOn => (is => 'ro', isa => 'Str', request_name => 'createdOn', traits => ['NameInRequest']);
  has OfferingPromotionId => (is => 'ro', isa => 'Str', request_name => 'offeringPromotionId', traits => ['NameInRequest']);
  has OfferingStatus => (is => 'ro', isa => 'Paws::DeviceFarm::OfferingStatus', request_name => 'offeringStatus', traits => ['NameInRequest']);
  has TransactionId => (is => 'ro', isa => 'Str', request_name => 'transactionId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::OfferingTransaction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::OfferingTransaction object:

  $service_obj->Method(Att1 => { Cost => $value, ..., TransactionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::OfferingTransaction object:

  $result = $service_obj->Method(...);
  $result->Att1->Cost

=head1 DESCRIPTION

Represents the metadata of an offering transaction.

=head1 ATTRIBUTES


=head2 Cost => L<Paws::DeviceFarm::MonetaryAmount>

  The cost of an offering transaction.


=head2 CreatedOn => Str

  The date on which an offering transaction was created.


=head2 OfferingPromotionId => Str

  The ID that corresponds to a device offering promotion.


=head2 OfferingStatus => L<Paws::DeviceFarm::OfferingStatus>

  The status of an offering transaction.


=head2 TransactionId => Str

  The transaction ID of the offering transaction.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

