# Generated from json/callargs_class.tt

package Paws::CodePipeline::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CodePipeline::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodePipeline::ListTagsForResourceOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceArn' => 1
                  },
  'NameInRequest' => {
                       'MaxResults' => 'maxResults',
                       'NextToken' => 'nextToken',
                       'ResourceArn' => 'resourceArn'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ResourceArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $ListTagsForResourceOutput = $codepipeline->ListTagsForResource(
      ResourceArn => 'MyResourceArn',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceOutput->NextToken;
    my $Tags      = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::CodePipeline::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/ListTagsForResource>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token that was returned from the previous API call, which would be
used to return the next page of the list. The ListTagsforResource call
lists all available tags in one call and does not use pagination.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource to get tags for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

