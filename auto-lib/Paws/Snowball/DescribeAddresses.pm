
package Paws::Snowball::DescribeAddresses;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::DescribeAddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeAddresses - Arguments for method DescribeAddresses on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAddresses on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method DescribeAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAddresses.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    # To describe all the addresses you've created for AWS Snowball
    # This operation describes all the addresses that you've created for AWS
    # Snowball. Calling this API in one of the US regions will return addresses
    # from the list of all addresses associated with this account in all US
    # regions.
    my $DescribeAddressesResult = $snowball->DescribeAddresses();

    # Results:
    my $Addresses = $DescribeAddressesResult->Addresses;

    # Returns a L<Paws::Snowball::DescribeAddressesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/DescribeAddresses>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The number of C<ADDRESS> objects to return.



=head2 NextToken => Str

HTTP requests are stateless. To identify what object comes "next" in
the list of C<ADDRESS> objects, you have the option of specifying a
value for C<NextToken> as the starting point for your list of returned
addresses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAddresses in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

