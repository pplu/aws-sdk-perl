
package Paws::CloudSearch::DescribeDomains;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDomains');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearch::DescribeDomainsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeDomainsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeDomains - Arguments for method DescribeDomains on L<Paws::CloudSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDomains on the
L<Amazon CloudSearch|Paws::CloudSearch> service. Use the attributes of this class
as arguments to method DescribeDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDomains.

=head1 SYNOPSIS

    my $cloudsearch = Paws->service('CloudSearch');
    my $DescribeDomainsResponse = $cloudsearch->DescribeDomains(
      DomainNames => [
        'MyDomainName', ...    # min: 3, max: 28
      ],                       # OPTIONAL
    );

    # Results:
    my $DomainStatusList = $DescribeDomainsResponse->DomainStatusList;

    # Returns a L<Paws::CloudSearch::DescribeDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearch/DescribeDomains>

=head1 ATTRIBUTES


=head2 DomainNames => ArrayRef[Str|Undef]

The names of the domains you want to include in the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDomains in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

