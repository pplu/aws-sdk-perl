
package Paws::DS::ListTagsForResource;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::ListTagsForResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $ListTagsForResourceResult = $ds->ListTagsForResource(
      ResourceId => 'MyResourceId',
      Limit      => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceResult->NextToken;
    my $Tags      = $ListTagsForResourceResult->Tags;

    # Returns a L<Paws::DS::ListTagsForResourceResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/ListTagsForResource>

=head1 ATTRIBUTES


=head2 Limit => Int

Reserved for future use.



=head2 NextToken => Str

Reserved for future use.



=head2 B<REQUIRED> ResourceId => Str

Identifier (ID) of the directory for which you want to retrieve tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

