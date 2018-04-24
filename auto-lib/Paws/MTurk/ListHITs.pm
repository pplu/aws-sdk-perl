
package Paws::MTurk::ListHITs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHITs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::ListHITsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::ListHITs - Arguments for method ListHITs on L<Paws::MTurk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHITs on the 
L<Amazon Mechanical Turk|Paws::MTurk> service. Use the attributes of this class
as arguments to method ListHITs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHITs.

As an example:

  $service_obj->ListHITs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str

Pagination token




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHITs in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

