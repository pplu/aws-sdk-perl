
package Paws::FSX::ListTagsForResource;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FSX::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::FSX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon FSx|Paws::FSX> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $fsx = Paws->service('FSX');
    my $ListTagsForResourceResponse = $fsx->ListTagsForResource(
      ResourceARN => 'MyResourceARN',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResponse->NextToken;
    my $Tags      = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::FSX::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fsx/ListTagsForResource>

=head1 ATTRIBUTES


=head2 MaxResults => Int

(Optional) Maximum number of tags to return in the response (integer).
This parameter value must be greater than 0. The number of items that
Amazon FSx returns is the minimum of the C<MaxResults> parameter
specified in the request and the service's internal maximum number of
items per page.



=head2 NextToken => Str

(Optional) Opaque pagination token returned from a previous
C<ListTagsForResource> operation (String). If a token present, the
action continues the list from where the returning call left off.



=head2 B<REQUIRED> ResourceARN => Str

The ARN of the Amazon FSx resource that will have its tags listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

