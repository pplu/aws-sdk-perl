package Paws::ServiceCatalog::PortfolioDetail;
  use Moose;
  has ARN => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has ProviderName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::PortfolioDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::PortfolioDetail object:

  $service_obj->Method(Att1 => { ARN => $value, ..., ProviderName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::PortfolioDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->ARN

=head1 DESCRIPTION

Information about a portfolio.

=head1 ATTRIBUTES


=head2 ARN => Str

  The ARN assigned to the portfolio.


=head2 CreatedTime => Str

  The UTC time stamp of the creation time.


=head2 Description => Str

  The description of the portfolio.


=head2 DisplayName => Str

  The name to use for display purposes.


=head2 Id => Str

  The portfolio identifier.


=head2 ProviderName => Str

  The name of the portfolio provider.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

