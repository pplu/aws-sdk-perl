
package Paws::AppMesh::ListTagsForResource;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::AppMesh::Types qw//;
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ResourceArn => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/v20190125/tags');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AppMesh::ListTagsForResourceOutput');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Limit' => {
                            'type' => 'Int'
                          }
             },
  'ParamInQuery' => {
                      'ResourceArn' => 'resourceArn',
                      'NextToken' => 'nextToken',
                      'Limit' => 'limit'
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

Paws::AppMesh::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::AppMesh>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS App Mesh|Paws::AppMesh> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $appmesh = Paws->service('AppMesh');
    my $ListTagsForResourceOutput = $appmesh->ListTagsForResource(
      ResourceArn => 'MyArn',
      Limit       => 1,             # OPTIONAL
      NextToken   => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTagsForResourceOutput->NextToken;
    my $Tags      = $ListTagsForResourceOutput->Tags;

    # Returns a L<Paws::AppMesh::ListTagsForResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/appmesh/ListTagsForResource>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of tag results returned by C<ListTagsForResource> in
paginated output. When this parameter is used, C<ListTagsForResource>
returns only C<limit> results in a single page along with a
C<nextToken> response element. You can see the remaining results of the
initial request by sending another C<ListTagsForResource> request with
the returned C<nextToken> value. This value can be between 1 and 100.
If you don't use this parameter, C<ListTagsForResource> returns up to
100 results and a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListTagsForResource> request where C<limit> was used and the results
exceeded the value of that parameter. Pagination continues from the end
of the previous results that returned the C<nextToken> value.



=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that identifies the resource to list the
tags for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

