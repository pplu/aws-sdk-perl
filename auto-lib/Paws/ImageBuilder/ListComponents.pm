
package Paws::ImageBuilder::ListComponents;
  use Moose;
  has ByName => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'byName');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::ImageBuilder::Filter]', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListComponents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListComponents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListComponentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListComponents - Arguments for method ListComponents on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListComponents on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListComponents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListComponents.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListComponentsResponse = $imagebuilder->ListComponents(
      ByName  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyFilterName',              # OPTIONAL
          Values => [ 'MyFilterValue', ... ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
      Owner      => 'Self',                 # OPTIONAL
    );

    # Results:
    my $ComponentVersionList = $ListComponentsResponse->ComponentVersionList;
    my $NextToken            = $ListComponentsResponse->NextToken;
    my $RequestId            = $ListComponentsResponse->RequestId;

    # Returns a L<Paws::ImageBuilder::ListComponentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListComponents>

=head1 ATTRIBUTES


=head2 ByName => Bool

Returns the list of component build versions for the specified semantic
version.



=head2 Filters => ArrayRef[L<Paws::ImageBuilder::Filter>]

The filters.



=head2 MaxResults => Int

The maximum items to return in a request.



=head2 NextToken => Str

A token to specify where to start paginating. This is the NextToken
from a previously truncated response.



=head2 Owner => Str

The owner defines which components you want to list. By default, this
request will only show components owned by your account. You can use
this field to specify if you want to view components owned by yourself,
by Amazon, or those components that have been shared with you by other
customers.

Valid values are: C<"Self">, C<"Shared">, C<"Amazon">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListComponents in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

