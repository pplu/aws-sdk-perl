
package Paws::CodeGuruReviewer::UntagResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'tagKeys', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UntagResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruReviewer::UntagResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::UntagResource - Arguments for method UntagResource on L<Paws::CodeGuruReviewer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UntagResource on the
L<Amazon CodeGuru Reviewer|Paws::CodeGuruReviewer> service. Use the attributes of this class
as arguments to method UntagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UntagResource.

=head1 SYNOPSIS

    my $codeguru-reviewer = Paws->service('CodeGuruReviewer');
    my $UntagResourceResponse = $codeguru -reviewer->UntagResource(
      ResourceArn => 'MyAssociationArn',
      TagKeys     => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-reviewer/UntagResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the C<RepositoryAssociation>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_RepositoryAssociation.html)
object. You can retrieve this ARN by calling
C<ListRepositoryAssociations>
(https://docs.aws.amazon.com/codeguru/latest/reviewer-api/API_ListRepositoryAssociations.html).



=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

A list of the keys for each tag you want to remove from an associated
repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UntagResource in L<Paws::CodeGuruReviewer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

