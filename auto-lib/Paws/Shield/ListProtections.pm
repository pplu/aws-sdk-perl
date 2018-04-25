
package Paws::Shield::ListProtections;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProtections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::ListProtectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListProtections - Arguments for method ListProtections on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProtections on the 
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method ListProtections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProtections.

As an example:

  $service_obj->ListProtections(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of Protection objects to be returned. If this is
left blank the first 20 results will be returned.



=head2 NextToken => Str

The C<ListProtectionsRequest.NextToken> value from a previous call to
C<ListProtections>. Pass null if this is the first call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProtections in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

