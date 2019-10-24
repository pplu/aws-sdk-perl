# Generated from json/callargs_class.tt

package Paws::Discovery::DescribeTags;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Discovery::Types qw/Discovery_TagFilter/;
  has Filters => (is => 'ro', isa => ArrayRef[Discovery_TagFilter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeTags');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Discovery::DescribeTagsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::Discovery::TagFilter',
                              'type' => 'ArrayRef[Discovery_TagFilter]'
                            },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Filters' => 'filters',
                       'MaxResults' => 'maxResults'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeTags - Arguments for method DescribeTags on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTags on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method DescribeTags.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTags.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $DescribeTagsResponse = $discovery->DescribeTags(
      Filters => [
        {
          Name   => 'MyFilterName',
          Values => [ 'MyFilterValue', ... ],

        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $DescribeTagsResponse->NextToken;
    my $Tags      = $DescribeTagsResponse->Tags;

    # Returns a L<Paws::Discovery::DescribeTagsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/DescribeTags>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[Discovery_TagFilter]

You can filter the list using a I<key>-I<value> format. You can
separate these items by using logical operators. Allowed filters
include C<tagKey>, C<tagValue>, and C<configurationId>.



=head2 MaxResults => Int

The total number of items to return in a single page of output. The
maximum value is 100.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTags in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

