
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

Paws::AppStream::DescribeFleets - Arguments for method DescribeFleets on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleets on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method DescribeFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleets.

As an example:

  $service_obj->DescribeFleets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Names => ArrayRef[Str|Undef]

The names of the fleets to describe.



=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleets in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

