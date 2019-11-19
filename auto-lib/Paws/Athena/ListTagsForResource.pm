# Generated from json/callargs_class.tt

package Paws::Athena::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Athena::Types qw//;
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceARN => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Athena::ListTagsForResourceOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ResourceARN' => 1
                  },
  'types' => {
               'ResourceARN' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $ListTagsForResourceOutput = $athena->ListTagsForResource(
      ResourceARN => 'MyAmazonResourceName',
      MaxResults  => 1,                        # OPTIONAL
      NextToken   => 'MyToken',                # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceOutput->NextToken;
    my $Tags      = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::Athena::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/ListTagsForResource>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned per request that lists the
tags for the workgroup resource.



=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results for this request, where the request lists the tags
for the workgroup resource with the specified ARN.



=head2 B<REQUIRED> ResourceARN => Str

Lists the tags for the workgroup resource with the specified ARN.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

