package Paws::Pricing;
  use Moose;
  sub service { 'api.pricing' }
  sub signing_name { 'pricing' }
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
  
  sub DescribeAllServices {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeServices(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeServices(@_, NextToken => $next_result->NextToken);
        push @{ $result->Services }, @{ $next_result->Services };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Services') foreach (@{ $result->Services });
        $result = $self->DescribeServices(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Services') foreach (@{ $result->Services });
    }

    return undef
  }
  sub GetAllAttributeValues {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetAttributeValues(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetAttributeValues(@_, NextToken => $next_result->NextToken);
        push @{ $result->AttributeValues }, @{ $next_result->AttributeValues };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'AttributeValues') foreach (@{ $result->AttributeValues });
        $result = $self->GetAttributeValues(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'AttributeValues') foreach (@{ $result->AttributeValues });
    }

    return undef
  }
  sub GetAllProducts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->GetProducts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->GetProducts(@_, NextToken => $next_result->NextToken);
        push @{ $result->PriceList }, @{ $next_result->PriceList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'PriceList') foreach (@{ $result->PriceList });
        $result = $self->GetProducts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'PriceList') foreach (@{ $result->PriceList });
    }

    return undef
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


For the AWS API documentation, see L<https://docs.aws.amazon.com/account-billing/>


=head1 METHODS

=head2 DescribeServices

=over

=item [FormatVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceCode => Str]


=back

Each argument is described in detail in: L<Paws::Pricing::DescribeServices>

Returns: a L<Paws::Pricing::DescribeServicesResponse> instance

Returns the metadata for one service or a list of the metadata for all
services. Use this without a service code to get the service codes for
all services. Use it with a service code, such as C<AmazonEC2>, to get
information specific to that service, such as the attribute names
available for that service. For example, some of the attribute names
available for EC2 are C<volumeType>, C<maxIopsVolume>, C<operation>,
C<locationType>, and C<instanceCapacity10xlarge>.


=head2 GetAttributeValues

=over

=item AttributeName => Str

=item ServiceCode => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Pricing::GetAttributeValues>

Returns: a L<Paws::Pricing::GetAttributeValuesResponse> instance

Returns a list of attribute values. Attibutes are similar to the
details in a Price List API offer file. For a list of available
attributes, see Offer File Definitions
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs)
in the AWS Billing and Cost Management User Guide
(http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html).


=head2 GetProducts

=over

=item [Filters => ArrayRef[L<Paws::Pricing::Filter>]]

=item [FormatVersion => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ServiceCode => Str]


=back

Each argument is described in detail in: L<Paws::Pricing::GetProducts>

Returns: a L<Paws::Pricing::GetProductsResponse> instance

Returns a list of all products that match the filter criteria.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllServices(sub { },[FormatVersion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])

=head2 DescribeAllServices([FormatVersion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Services, passing the object as the first parameter, and the string 'Services' as the second parameter 

If not, it will return a a L<Paws::Pricing::DescribeServicesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllAttributeValues(sub { },AttributeName => Str, ServiceCode => Str, [MaxResults => Int, NextToken => Str])

=head2 GetAllAttributeValues(AttributeName => Str, ServiceCode => Str, [MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - AttributeValues, passing the object as the first parameter, and the string 'AttributeValues' as the second parameter 

If not, it will return a a L<Paws::Pricing::GetAttributeValuesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 GetAllProducts(sub { },[Filters => ArrayRef[L<Paws::Pricing::Filter>], FormatVersion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])

=head2 GetAllProducts([Filters => ArrayRef[L<Paws::Pricing::Filter>], FormatVersion => Str, MaxResults => Int, NextToken => Str, ServiceCode => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - PriceList, passing the object as the first parameter, and the string 'PriceList' as the second parameter 

If not, it will return a a L<Paws::Pricing::GetProductsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

