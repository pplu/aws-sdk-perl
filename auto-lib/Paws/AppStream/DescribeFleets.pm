
package Paws::AppStream::DescribeFleets;
  use Moose;
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::DescribeFleetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeFleets - Arguments for method DescribeFleets on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleets on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method DescribeFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleets.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $DescribeFleetsResult = $appstream2->DescribeFleets(
      Names => [
        'MyString', ...    # min: 1
      ],                   # OPTIONAL
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Fleets    = $DescribeFleetsResult->Fleets;
    my $NextToken = $DescribeFleetsResult->NextToken;

    # Returns a L<Paws::AppStream::DescribeFleetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/DescribeFleets>

=head1 ATTRIBUTES


=head2 Names => ArrayRef[Str|Undef]

The names of the fleets to describe.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleets in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

