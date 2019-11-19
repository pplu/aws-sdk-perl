
package Paws::WorkDocs::DescribeFolderContents;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::WorkDocs::Types qw//;
  has AuthenticationToken => (is => 'ro', isa => Str, predicate => 1);
  has FolderId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Include => (is => 'ro', isa => Str, predicate => 1);
  has Limit => (is => 'ro', isa => Int, predicate => 1);
  has Marker => (is => 'ro', isa => Str, predicate => 1);
  has Order => (is => 'ro', isa => Str, predicate => 1);
  has Sort => (is => 'ro', isa => Str, predicate => 1);
  has Type => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeFolderContents');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/api/v1/folders/{FolderId}/contents');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::WorkDocs::DescribeFolderContentsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthenticationToken' => {
                                          'type' => 'Str'
                                        },
               'FolderId' => {
                               'type' => 'Str'
                             },
               'Marker' => {
                             'type' => 'Str'
                           },
               'Sort' => {
                           'type' => 'Str'
                         },
               'Type' => {
                           'type' => 'Str'
                         },
               'Order' => {
                            'type' => 'Str'
                          },
               'Limit' => {
                            'type' => 'Int'
                          },
               'Include' => {
                              'type' => 'Str'
                            }
             },
  'ParamInQuery' => {
                      'Limit' => 'limit',
                      'Include' => 'include',
                      'Order' => 'order',
                      'Marker' => 'marker',
                      'Type' => 'type',
                      'Sort' => 'sort'
                    },
  'IsRequired' => {
                    'FolderId' => 1
                  },
  'ParamInURI' => {
                    'FolderId' => 'FolderId'
                  },
  'ParamInHeader' => {
                       'AuthenticationToken' => 'Authentication'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeFolderContents - Arguments for method DescribeFolderContents on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFolderContents on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DescribeFolderContents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFolderContents.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DescribeFolderContentsResponse = $workdocs->DescribeFolderContents(
      FolderId            => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Include             => 'MyFieldNamesType',              # OPTIONAL
      Limit               => 1,                               # OPTIONAL
      Marker              => 'MyPageMarkerType',              # OPTIONAL
      Order               => 'ASCENDING',                     # OPTIONAL
      Sort                => 'DATE',                          # OPTIONAL
      Type                => 'ALL',                           # OPTIONAL
    );

    # Results:
    my $Documents = $DescribeFolderContentsResponse->Documents;
    my $Folders   = $DescribeFolderContentsResponse->Folders;
    my $Marker    = $DescribeFolderContentsResponse->Marker;

    # Returns a L<Paws::WorkDocs::DescribeFolderContentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DescribeFolderContents>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> FolderId => Str

The ID of the folder.



=head2 Include => Str

The contents to include. Specify "INITIALIZED" to include initialized
documents.



=head2 Limit => Int

The maximum number of items to return with this call.



=head2 Marker => Str

The marker for the next set of results. This marker was received from a
previous call.



=head2 Order => Str

The order for the contents of the folder.

Valid values are: C<"ASCENDING">, C<"DESCENDING">

=head2 Sort => Str

The sorting criteria.

Valid values are: C<"DATE">, C<"NAME">

=head2 Type => Str

The type of items.

Valid values are: C<"ALL">, C<"DOCUMENT">, C<"FOLDER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFolderContents in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

