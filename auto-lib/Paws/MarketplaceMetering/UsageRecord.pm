package Paws::MarketplaceMetering::UsageRecord;
  use Moose;
  has CustomerIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Dimension => (is => 'ro', isa => 'Str', required => 1);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceMetering::UsageRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MarketplaceMetering::UsageRecord object:

  $service_obj->Method(Att1 => { CustomerIdentifier => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MarketplaceMetering::UsageRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomerIdentifier

=head1 DESCRIPTION

A UsageRecord indicates a quantity of usage for a given product,
customer, dimension and time.

Multiple requests with the same UsageRecords as input will be
deduplicated to prevent double charges.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerIdentifier => Str

  The CustomerIdentifier is obtained through the ResolveCustomer
operation and represents an individual buyer in your application.


=head2 B<REQUIRED> Dimension => Str

  During the process of registering a product on AWS Marketplace, up to
eight dimensions are specified. These represent different units of
value in your application.


=head2 B<REQUIRED> Quantity => Int

  The quantity of usage consumed by the customer for the given dimension
and time.


=head2 B<REQUIRED> Timestamp => Str

  Timestamp of the hour, recorded in UTC. The seconds and milliseconds
portions of the timestamp will be ignored.

Your application can meter usage for up to one hour in the past.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MarketplaceMetering>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

