package Paws::Pricing;
  use Moose;
  sub service { 'api.pricing' }
  sub version { '2017-10-15' }
  sub target_prefix { 'AWSPriceListService' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller';

  
  sub DescribeServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pricing::DescribeServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAttributeValues {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pricing::GetAttributeValues', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetProducts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Pricing::GetProducts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/DescribeServices GetAttributeValues GetProducts / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing - Perl Interface to AWS AWS Price List Service

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Pricing');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Price List Service API (AWS Price List Service) is a centralized
and convenient way to programmatically query Amazon Web Services for
services, products, and pricing information. The AWS Price List Service
uses standardized product attributes such as C<Location>, C<Storage
Class>, and C<Operating System>, and provides prices at the SKU level.
You can use the AWS Price List Service to build cost control and
scenario planning tools, reconcile billing data, forecast future spend
for budgeting purposes, and provide cost benefit analysis that compare
your internal workloads with AWS.

Use C<GetServices> without a service code to retrieve the service codes
for all AWS services, then C<GetServices> with a service code to
retreive the attribute names for that service. After you have the
service code and attribute names, you can use C<GetAttributeValues> to
see what values are available for an attribute. With the service code
and an attribute name and value, you can use C<GetProducts> to find
specific products that you're interested in, such as an C<AmazonEC2>
instance, with a C<Provisioned IOPS> C<volumeType>.

Service Endpoint

AWS Price List Service API provides the following two endpoints:

=over

=item *

https://api.pricing.us-east-1.amazonaws.com

=item *

https://api.pricing.ap-south-1.amazonaws.com

=back


=head1 METHODS

=head2 DescribeServices([FormatVersion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])

Each argument is described in detail in: L<Paws::Pricing::DescribeServices>

Returns: a L<Paws::Pricing::DescribeServicesResponse> instance

Returns the metadata for one service or a list of the metadata for all
services. Use this without a service code to get the service codes for
all services. Use it with a service code, such as C<AmazonEC2>, to get
information specific to that service, such as the attribute names
available for that service. For example, some of the attribute names
available for EC2 are C<volumeType>, C<maxIopsVolume>, C<operation>,
C<locationType>, and C<instanceCapacity10xlarge>.


=head2 GetAttributeValues(AttributeName => Str, ServiceCode => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::Pricing::GetAttributeValues>

Returns: a L<Paws::Pricing::GetAttributeValuesResponse> instance

Returns a list of attribute values. Attibutes are similar to the
details in a Price List API offer file. For a list of available
attributes, see Offer File Definitions in the AWS Billing and Cost
Management User Guide.


=head2 GetProducts([Filters => ArrayRef[L<Paws::Pricing::Filter>], FormatVersion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])

Each argument is described in detail in: L<Paws::Pricing::GetProducts>

Returns: a L<Paws::Pricing::GetProductsResponse> instance

Returns a list of all products that match the filter criteria.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

