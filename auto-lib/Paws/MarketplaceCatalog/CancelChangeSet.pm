
package Paws::MarketplaceCatalog::CancelChangeSet;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceCatalog::Types qw//;
  has Catalog => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ChangeSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CancelChangeSet');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/CancelChangeSet');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MarketplaceCatalog::CancelChangeSetResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeSetId' => {
                                  'type' => 'Str'
                                },
               'Catalog' => {
                              'type' => 'Str'
                            }
             },
  'ParamInQuery' => {
                      'ChangeSetId' => 'changeSetId',
                      'Catalog' => 'catalog'
                    },
  'IsRequired' => {
                    'ChangeSetId' => 1,
                    'Catalog' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::CancelChangeSet - Arguments for method CancelChangeSet on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelChangeSet on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method CancelChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelChangeSet.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $CancelChangeSetResponse = $catalog . marketplace->CancelChangeSet(
      Catalog     => 'MyCatalog',
      ChangeSetId => 'MyResourceId',

    );

    # Results:
    my $ChangeSetArn = $CancelChangeSetResponse->ChangeSetArn;
    my $ChangeSetId  = $CancelChangeSetResponse->ChangeSetId;

    # Returns a L<Paws::MarketplaceCatalog::CancelChangeSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/CancelChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Required. The catalog related to the request. Fixed value:
C<AWSMarketplace>.



=head2 B<REQUIRED> ChangeSetId => Str

Required. The unique identifier of the C<StartChangeSet> request that
you want to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelChangeSet in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

