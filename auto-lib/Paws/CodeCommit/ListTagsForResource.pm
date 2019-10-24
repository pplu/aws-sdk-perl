# Generated from json/callargs_class.tt

package Paws::CodeCommit::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeCommit::Types qw//;
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CodeCommit::ListTagsForResourceOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'ResourceArn' => 'resourceArn',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'ResourceArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::CodeCommit>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS CodeCommit|Paws::CodeCommit> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $codecommit = Paws->service('CodeCommit');
    my $ListTagsForResourceOutput = $codecommit->ListTagsForResource(
      ResourceArn => 'MyResourceArn',
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceOutput->NextToken;
    my $Tags      = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::CodeCommit::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codecommit/ListTagsForResource>

=head1 ATTRIBUTES


=head2 NextToken => Str

An enumeration token that when provided in a request, returns the next
batch of the results.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource for which you want to
get information about tags, if any.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

