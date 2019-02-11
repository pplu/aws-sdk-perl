package Paws::SageMaker::SubscribedWorkteam;
  use Moose;
  has ListingId => (is => 'ro', isa => 'Str');
  has MarketplaceDescription => (is => 'ro', isa => 'Str');
  has MarketplaceTitle => (is => 'ro', isa => 'Str');
  has SellerName => (is => 'ro', isa => 'Str');
  has WorkteamArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::SubscribedWorkteam

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::SubscribedWorkteam object:

  $service_obj->Method(Att1 => { ListingId => $value, ..., WorkteamArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::SubscribedWorkteam object:

  $result = $service_obj->Method(...);
  $result->Att1->ListingId

=head1 DESCRIPTION

Describes a work team of a vendor that does the a labelling job.

=head1 ATTRIBUTES


=head2 ListingId => Str

  


=head2 MarketplaceDescription => Str

  The description of the vendor from the Amazon Marketplace.


=head2 MarketplaceTitle => Str

  The title of the service provided by the vendor in the Amazon
Marketplace.


=head2 SellerName => Str

  The name of the vendor in the Amazon Marketplace.


=head2 B<REQUIRED> WorkteamArn => Str

  The Amazon Resource Name (ARN) of the vendor that you have subscribed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

