
package Paws::MarketplaceCatalog::DescribeChangeSet;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceCatalog::Types qw//;
  has Catalog => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ChangeSetId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeChangeSet');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/DescribeChangeSet');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MarketplaceCatalog::DescribeChangeSetResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInQuery' => {
                      'Catalog' => 'catalog',
                      'ChangeSetId' => 'changeSetId'
                    },
  'IsRequired' => {
                    'Catalog' => 1,
                    'ChangeSetId' => 1
                  },
  'types' => {
               'Catalog' => {
                              'type' => 'Str'
                            },
               'ChangeSetId' => {
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

Paws::MarketplaceCatalog::DescribeChangeSet - Arguments for method DescribeChangeSet on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChangeSet on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method DescribeChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChangeSet.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $DescribeChangeSetResponse = $catalog . marketplace->DescribeChangeSet(
      Catalog     => 'MyCatalog',
      ChangeSetId => 'MyResourceId',

    );

    # Results:
    my $ChangeSet          = $DescribeChangeSetResponse->ChangeSet;
    my $ChangeSetArn       = $DescribeChangeSetResponse->ChangeSetArn;
    my $ChangeSetId        = $DescribeChangeSetResponse->ChangeSetId;
    my $ChangeSetName      = $DescribeChangeSetResponse->ChangeSetName;
    my $EndTime            = $DescribeChangeSetResponse->EndTime;
    my $FailureDescription = $DescribeChangeSetResponse->FailureDescription;
    my $StartTime          = $DescribeChangeSetResponse->StartTime;
    my $Status             = $DescribeChangeSetResponse->Status;

    # Returns a L<Paws::MarketplaceCatalog::DescribeChangeSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/DescribeChangeSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

Required. The catalog related to the request. Fixed value:
C<AWSMarketplace>



=head2 B<REQUIRED> ChangeSetId => Str

Required. The unique identifier for the C<StartChangeSet> request that
you want to describe the details for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChangeSet in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

