
package Paws::ECRPublic::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECRPublic::ListTagsForResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECRPublic::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::ECRPublic>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Elastic Container Registry Public|Paws::ECRPublic> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $api.ecr-public = Paws->service('ECRPublic');
    my $ListTagsForResourceResponse = $api . ecr-public->ListTagsForResource(
      ResourceArn => 'MyArn',

    );

    # Results:
    my $Tags = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::ECRPublic::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr-public/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that identifies the resource for which
to list the tags. Currently, the supported resource is an Amazon ECR
Public repository.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::ECRPublic>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

