
package Paws::Pricing::DescribeServices;
  use Moose;
  has FormatVersion => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pricing::DescribeServicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pricing::DescribeServices - Arguments for method DescribeServices on L<Paws::Pricing>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServices on the
L<AWS Price List Service|Paws::Pricing> service. Use the attributes of this class
as arguments to method DescribeServices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServices.

=head1 SYNOPSIS

    my $api.pricing = Paws->service('Pricing');
    my $DescribeServicesResponse = $api . pricing->DescribeServices(
      FormatVersion => 'MyString',    # OPTIONAL
      MaxResults    => 1,             # OPTIONAL
      NextToken     => 'MyString',    # OPTIONAL
      ServiceCode   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $FormatVersion = $DescribeServicesResponse->FormatVersion;
    my $NextToken     = $DescribeServicesResponse->NextToken;
    my $Services      = $DescribeServicesResponse->Services;

    # Returns a L<Paws::Pricing::DescribeServicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.pricing/DescribeServices>

=head1 ATTRIBUTES


=head2 FormatVersion => Str

The format version that you want the response to be in.

Valid values are: C<aws_v1>



=head2 MaxResults => Int

The maximum number of results that you want returned in the response.



=head2 NextToken => Str

The pagination token that indicates the next set of results that you
want to retrieve.



=head2 ServiceCode => Str

The code for the service whose information you want to retrieve, such
as C<AmazonEC2>. You can use the C<ServiceCode> to filter the results
in a C<GetProducts> call. To retrieve a list of all services, leave
this blank.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServices in L<Paws::Pricing>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

