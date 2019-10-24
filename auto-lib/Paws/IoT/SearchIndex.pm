
package Paws::IoT::SearchIndex;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::IoT::Types qw//;
  has IndexName => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has QueryString => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has QueryVersion => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchIndex');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/indices/search');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT::SearchIndexResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'QueryVersion' => {
                                   'type' => 'Str'
                                 },
               'IndexName' => {
                                'type' => 'Str'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'QueryString' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'QueryVersion' => 'queryVersion',
                       'IndexName' => 'indexName',
                       'NextToken' => 'nextToken',
                       'MaxResults' => 'maxResults',
                       'QueryString' => 'queryString'
                     },
  'IsRequired' => {
                    'QueryString' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::SearchIndex - Arguments for method SearchIndex on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchIndex on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method SearchIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchIndex.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $SearchIndexResponse = $iot->SearchIndex(
      QueryString  => 'MyQueryString',
      IndexName    => 'MyIndexName',       # OPTIONAL
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
      QueryVersion => 'MyQueryVersion',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $SearchIndexResponse->NextToken;
    my $ThingGroups = $SearchIndexResponse->ThingGroups;
    my $Things      = $SearchIndexResponse->Things;

    # Returns a L<Paws::IoT::SearchIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/SearchIndex>

=head1 ATTRIBUTES


=head2 IndexName => Str

The search index name.



=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

The token used to get the next set of results, or null if there are no
additional results.



=head2 B<REQUIRED> QueryString => Str

The search query string.



=head2 QueryVersion => Str

The query version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchIndex in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

