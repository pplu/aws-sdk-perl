
package Paws::MarketplaceCatalog::DescribeEntity;
  use Moose;
  has Catalog => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'catalog', required => 1);
  has EntityId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'entityId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEntity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/DescribeEntity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceCatalog::DescribeEntityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::DescribeEntity - Arguments for method DescribeEntity on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEntity on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method DescribeEntity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEntity.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $DescribeEntityResponse = $catalog . marketplace->DescribeEntity(
      Catalog  => 'MyCatalog',
      EntityId => 'MyResourceId',

    );

    # Results:
    my $Details          = $DescribeEntityResponse->Details;
    my $EntityArn        = $DescribeEntityResponse->EntityArn;
    my $EntityIdentifier = $DescribeEntityResponse->EntityIdentifier;
    my $EntityType       = $DescribeEntityResponse->EntityType;
    my $LastModifiedDate = $DescribeEntityResponse->LastModifiedDate;

    # Returns a L<Paws::MarketplaceCatalog::DescribeEntityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/DescribeEntity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Required. The catalog related to the request. Fixed value:
C<AWSMarketplace>



=head2 B<REQUIRED> EntityId => Str

Required. The unique ID of the entity to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEntity in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

