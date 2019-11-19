
package Paws::WorkDocs::DescribeDocumentVersions;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::WorkDocs::Types qw//;
  has AuthenticationToken => (is => 'ro', isa => Str, predicate => 1);
  has DocumentId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Fields => (is => 'ro', isa => Str, predicate => 1);
  has Include => (is => 'ro', isa => Str, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeDocumentVersions');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/api/v1/documents/{DocumentId}/versions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkDocs::DescribeDocumentVersionsResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInHeader' => {
                       'AuthenticationToken' => 'Authentication'
                     },
  'IsRequired' => {
                    'DocumentId' => 1
                  },
  'ParamInQuery' => {
                      'Marker' => 'marker',
                      'Limit' => 'limit',
                      'Fields' => 'fields',
                      'Include' => 'include'
                    },
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               'AuthenticationToken' => {
                                          'type' => 'Str'
                                        },
               'Include' => {
                              'type' => 'Str'
                            },
               'Limit' => {
                            'type' => 'Int'
                          },
               'Fields' => {
                             'type' => 'Str'
                           },
               'DocumentId' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInURI' => {
                    'DocumentId' => 'DocumentId'
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeDocumentVersions - Arguments for method DescribeDocumentVersions on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDocumentVersions on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DescribeDocumentVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDocumentVersions.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DescribeDocumentVersionsResponse = $workdocs->DescribeDocumentVersions(
      DocumentId          => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Fields              => 'MyFieldNamesType',              # OPTIONAL
      Include             => 'MyFieldNamesType',              # OPTIONAL
      Limit               => 1,                               # OPTIONAL
      Marker              => 'MyPageMarkerType',              # OPTIONAL
    );

    # Results:
    my $DocumentVersions = $DescribeDocumentVersionsResponse->DocumentVersions;
    my $Marker           = $DescribeDocumentVersionsResponse->Marker;

    # Returns a L<Paws::WorkDocs::DescribeDocumentVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DescribeDocumentVersions>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 Fields => Str

Specify "SOURCE" to include initialized versions and a URL for the
source document.



=head2 Include => Str

A comma-separated list of values. Specify "INITIALIZED" to include
incomplete versions.



=head2 Limit => Int

The maximum number of versions to return with this call.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDocumentVersions in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

