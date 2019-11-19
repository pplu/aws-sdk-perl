# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::AssociateBudgetWithResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw//;
  has BudgetName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ResourceId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'AssociateBudgetWithResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::AssociateBudgetWithResourceOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceId' => 1,
                    'BudgetName' => 1
                  },
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               'BudgetName' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::AssociateBudgetWithResource - Arguments for method AssociateBudgetWithResource on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateBudgetWithResource on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method AssociateBudgetWithResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateBudgetWithResource.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $AssociateBudgetWithResourceOutput =
      $servicecatalog->AssociateBudgetWithResource(
      BudgetName => 'MyBudgetName',
      ResourceId => 'MyId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/AssociateBudgetWithResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BudgetName => Str

The name of the budget you want to associate.



=head2 B<REQUIRED> ResourceId => Str

The resource identifier. Either a portfolio-id or a product-id.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateBudgetWithResource in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

