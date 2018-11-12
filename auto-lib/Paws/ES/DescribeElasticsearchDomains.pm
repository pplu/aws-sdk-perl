
package Paws::ES::DescribeElasticsearchDomains;
  use Moose;
  has DomainNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticsearchDomains');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/domain-info');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DescribeElasticsearchDomainsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchDomains - Arguments for method DescribeElasticsearchDomains on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeElasticsearchDomains on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DescribeElasticsearchDomains.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeElasticsearchDomains.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DescribeElasticsearchDomainsResponse =
      $es->DescribeElasticsearchDomains(
      DomainNames => [
        'MyDomainName', ...    # min: 3, max: 28
      ],

      );

    # Results:
    my $DomainStatusList =
      $DescribeElasticsearchDomainsResponse->DomainStatusList;

    # Returns a L<Paws::ES::DescribeElasticsearchDomainsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DescribeElasticsearchDomains>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainNames => ArrayRef[Str|Undef]

The Elasticsearch domains for which you want information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeElasticsearchDomains in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

