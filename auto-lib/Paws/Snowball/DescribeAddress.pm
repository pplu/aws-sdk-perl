
package Paws::Snowball::DescribeAddress;
  use Moose;
  has AddressId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::DescribeAddressResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeAddress - Arguments for method DescribeAddress on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAddress on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method DescribeAddress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAddress.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
    # To describe an address for a job
    # This operation describes an address for a job.
    my $DescribeAddressResult = $snowball->DescribeAddress(
      {
        'AddressId' => 'ADID1234ab12-3eec-4eb3-9be6-9374c10eb51b'
      }
    );

    # Results:
    my $Address = $DescribeAddressResult->Address;

    # Returns a L<Paws::Snowball::DescribeAddressResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/DescribeAddress>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddressId => Str

The automatically generated ID for a specific address.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAddress in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

