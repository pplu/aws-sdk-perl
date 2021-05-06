
package Paws::DAX::ListTags;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTags');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::ListTagsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::ListTags - Arguments for method ListTags on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTags on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method ListTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTags.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $ListTagsResponse = $dax->ListTags(
      ResourceName => 'MyString',
      NextToken    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsResponse->NextToken;
    my $Tags      = $ListTagsResponse->Tags;

    # Returns a L<Paws::DAX::ListTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/ListTags>

=head1 ATTRIBUTES


=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token.



=head2 B<REQUIRED> ResourceName => Str

The name of the DAX resource to which the tags belong.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTags in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

