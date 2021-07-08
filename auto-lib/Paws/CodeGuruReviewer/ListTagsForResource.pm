
package Paws::CodeGuruReviewer::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::ListTagsForResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $ListTagsForResourceResponse = $codeguru -reviewer->ListTagsForResource(
      ResourceArn => 'MyAssociationArn',

    );

    # Results:
    my $Tags = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::CodeGuruReviewer::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the C<RepositoryAssociation>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
object. You can retrieve this ARN by calling
C<ListRepositoryAssociations>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

