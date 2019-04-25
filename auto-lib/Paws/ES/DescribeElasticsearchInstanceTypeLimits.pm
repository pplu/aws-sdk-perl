
package Paws::ES::DescribeElasticsearchInstanceTypeLimits;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'domainName');
  has ElasticsearchVersion => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ElasticsearchVersion', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeElasticsearchInstanceTypeLimits');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/instanceTypeLimits/{ElasticsearchVersion}/{InstanceType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::DescribeElasticsearchInstanceTypeLimitsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribeElasticsearchInstanceTypeLimits - Arguments for method DescribeElasticsearchInstanceTypeLimits on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeElasticsearchInstanceTypeLimits on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method DescribeElasticsearchInstanceTypeLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeElasticsearchInstanceTypeLimits.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $DescribeElasticsearchInstanceTypeLimitsResponse =
      $es->DescribeElasticsearchInstanceTypeLimits(
      ElasticsearchVersion => 'MyElasticsearchVersionString',
      InstanceType         => 'm3.medium.elasticsearch',
      DomainName           => 'MyDomainName',                   # OPTIONAL
      );

    # Results:
    my $LimitsByRole =
      $DescribeElasticsearchInstanceTypeLimitsResponse->LimitsByRole;

# Returns a L<Paws::ES::DescribeElasticsearchInstanceTypeLimitsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/es/DescribeElasticsearchInstanceTypeLimits>

=head1 ATTRIBUTES


=head2 DomainName => Str

DomainName represents the name of the Domain that we are trying to
modify. This should be present only if we are querying for
Elasticsearch C< Limits > for existing domain.



=head2 B<REQUIRED> ElasticsearchVersion => Str

Version of Elasticsearch for which C< Limits > are needed.



=head2 B<REQUIRED> InstanceType => Str

The instance type for an Elasticsearch cluster for which Elasticsearch
C< Limits > are needed.

Valid values are: C<"m3.medium.elasticsearch">, C<"m3.large.elasticsearch">, C<"m3.xlarge.elasticsearch">, C<"m3.2xlarge.elasticsearch">, C<"m4.large.elasticsearch">, C<"m4.xlarge.elasticsearch">, C<"m4.2xlarge.elasticsearch">, C<"m4.4xlarge.elasticsearch">, C<"m4.10xlarge.elasticsearch">, C<"t2.micro.elasticsearch">, C<"t2.small.elasticsearch">, C<"t2.medium.elasticsearch">, C<"r3.large.elasticsearch">, C<"r3.xlarge.elasticsearch">, C<"r3.2xlarge.elasticsearch">, C<"r3.4xlarge.elasticsearch">, C<"r3.8xlarge.elasticsearch">, C<"i2.xlarge.elasticsearch">, C<"i2.2xlarge.elasticsearch">, C<"d2.xlarge.elasticsearch">, C<"d2.2xlarge.elasticsearch">, C<"d2.4xlarge.elasticsearch">, C<"d2.8xlarge.elasticsearch">, C<"c4.large.elasticsearch">, C<"c4.xlarge.elasticsearch">, C<"c4.2xlarge.elasticsearch">, C<"c4.4xlarge.elasticsearch">, C<"c4.8xlarge.elasticsearch">, C<"r4.large.elasticsearch">, C<"r4.xlarge.elasticsearch">, C<"r4.2xlarge.elasticsearch">, C<"r4.4xlarge.elasticsearch">, C<"r4.8xlarge.elasticsearch">, C<"r4.16xlarge.elasticsearch">, C<"i3.large.elasticsearch">, C<"i3.xlarge.elasticsearch">, C<"i3.2xlarge.elasticsearch">, C<"i3.4xlarge.elasticsearch">, C<"i3.8xlarge.elasticsearch">, C<"i3.16xlarge.elasticsearch">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeElasticsearchInstanceTypeLimits in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

