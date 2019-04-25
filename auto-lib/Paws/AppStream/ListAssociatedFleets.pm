
package Paws::AppStream::ListAssociatedFleets;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociatedFleets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::ListAssociatedFleetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ListAssociatedFleets - Arguments for method ListAssociatedFleets on L<Paws::AppStream>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociatedFleets on the
L<Amazon AppStream|Paws::AppStream> service. Use the attributes of this class
as arguments to method ListAssociatedFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociatedFleets.

=head1 SYNOPSIS

    my $appstream2 = Paws->service('AppStream');
    my $ListAssociatedFleetsResult = $appstream2->ListAssociatedFleets(
      StackName => 'MyString',
      NextToken => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Names     = $ListAssociatedFleetsResult->Names;
    my $NextToken = $ListAssociatedFleetsResult->NextToken;

    # Returns a L<Paws::AppStream::ListAssociatedFleetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appstream2/ListAssociatedFleets>

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.



=head2 B<REQUIRED> StackName => Str

The name of the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociatedFleets in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

