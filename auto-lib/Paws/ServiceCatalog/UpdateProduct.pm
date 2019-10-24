# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::UpdateProduct;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_Tag/;
  has AcceptLanguage => (is => 'ro', isa => Str, predicate => 1);
  has AddTags => (is => 'ro', isa => ArrayRef[ServiceCatalog_Tag], predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Distributor => (is => 'ro', isa => Str, predicate => 1);
  has Id => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has Owner => (is => 'ro', isa => Str, predicate => 1);
  has RemoveTags => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has SupportDescription => (is => 'ro', isa => Str, predicate => 1);
  has SupportEmail => (is => 'ro', isa => Str, predicate => 1);
  has SupportUrl => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateProduct');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::UpdateProductOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SupportDescription' => {
                                         'type' => 'Str'
                                       },
               'Id' => {
                         'type' => 'Str'
                       },
               'RemoveTags' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'SupportEmail' => {
                                   'type' => 'Str'
                                 },
               'AcceptLanguage' => {
                                     'type' => 'Str'
                                   },
               'Owner' => {
                            'type' => 'Str'
                          },
               'SupportUrl' => {
                                 'type' => 'Str'
                               },
               'Distributor' => {
                                  'type' => 'Str'
                                },
               'AddTags' => {
                              'class' => 'Paws::ServiceCatalog::Tag',
                              'type' => 'ArrayRef[ServiceCatalog_Tag]'
                            },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Id' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProduct - Arguments for method UpdateProduct on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProduct on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method UpdateProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProduct.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $UpdateProductOutput = $servicecatalog->UpdateProduct(
      Id             => 'MyId',
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      AddTags        => [
        {
          Key   => 'MyTagKey',                 # min: 1, max: 128
          Value => 'MyTagValue',               # min: 1, max: 256

        },
        ...
      ],                                       # OPTIONAL
      Description => 'MyProductViewShortDescription',    # OPTIONAL
      Distributor => 'MyProductViewOwner',               # OPTIONAL
      Name        => 'MyProductViewName',                # OPTIONAL
      Owner       => 'MyProductViewOwner',               # OPTIONAL
      RemoveTags  => [
        'MyTagKey', ...                                  # min: 1, max: 128
      ],                                                 # OPTIONAL
      SupportDescription => 'MySupportDescription',      # OPTIONAL
      SupportEmail       => 'MySupportEmail',            # OPTIONAL
      SupportUrl         => 'MySupportUrl',              # OPTIONAL
    );

    # Results:
    my $ProductViewDetail = $UpdateProductOutput->ProductViewDetail;
    my $Tags              = $UpdateProductOutput->Tags;

    # Returns a L<Paws::ServiceCatalog::UpdateProductOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/UpdateProduct>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 AddTags => ArrayRef[ServiceCatalog_Tag]

The tags to add to the product.



=head2 Description => Str

The updated description of the product.



=head2 Distributor => Str

The updated distributor of the product.



=head2 B<REQUIRED> Id => Str

The product identifier.



=head2 Name => Str

The updated product name.



=head2 Owner => Str

The updated owner of the product.



=head2 RemoveTags => ArrayRef[Str|Undef]

The tags to remove from the product.



=head2 SupportDescription => Str

The updated support description for the product.



=head2 SupportEmail => Str

The updated support email for the product.



=head2 SupportUrl => Str

The updated support URL for the product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

