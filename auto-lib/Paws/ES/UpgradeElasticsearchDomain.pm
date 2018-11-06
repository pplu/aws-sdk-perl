
package Paws::ES::UpgradeElasticsearchDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has PerformCheckOnly => (is => 'ro', isa => 'Bool');
  has TargetVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpgradeElasticsearchDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/upgradeDomain');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::UpgradeElasticsearchDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpgradeElasticsearchDomain - Arguments for method UpgradeElasticsearchDomain on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpgradeElasticsearchDomain on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method UpgradeElasticsearchDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpgradeElasticsearchDomain.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $UpgradeElasticsearchDomainResponse = $es->UpgradeElasticsearchDomain(
      DomainName       => 'MyDomainName',
      TargetVersion    => 'MyElasticsearchVersionString',
      PerformCheckOnly => 1,                                # OPTIONAL
    );

    # Results:
    my $DomainName = $UpgradeElasticsearchDomainResponse->DomainName;
    my $PerformCheckOnly =
      $UpgradeElasticsearchDomainResponse->PerformCheckOnly;
    my $TargetVersion = $UpgradeElasticsearchDomainResponse->TargetVersion;

    # Returns a L<Paws::ES::UpgradeElasticsearchDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/UpgradeElasticsearchDomain>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str





=head2 PerformCheckOnly => Bool

This flag, when set to True, indicates that an Upgrade Eligibility
Check needs to be performed. This will not actually perform the
Upgrade.



=head2 B<REQUIRED> TargetVersion => Str

The version of Elasticsearch that you intend to upgrade the domain to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpgradeElasticsearchDomain in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

