
package Paws::WorkDocs::UpdateDocumentVersion;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkDocs::Types qw//;
  has AuthenticationToken => (is => 'ro', isa => Str, predicate => 1);
  has DocumentId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VersionId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has VersionStatus => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateDocumentVersion');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/api/v1/documents/{DocumentId}/versions/{VersionId}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PATCH');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::API::Response');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VersionStatus' => {
                                    'type' => 'Str'
                                  },
               'DocumentId' => {
                                 'type' => 'Str'
                               },
               'AuthenticationToken' => {
                                          'type' => 'Str'
                                        },
               'VersionId' => {
                                'type' => 'Str'
                              }
             },
  'ParamInURI' => {
                    'DocumentId' => 'DocumentId',
                    'VersionId' => 'VersionId'
                  },
  'ParamInHeader' => {
                       'AuthenticationToken' => 'Authentication'
                     },
  'IsRequired' => {
                    'DocumentId' => 1,
                    'VersionId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::UpdateDocumentVersion - Arguments for method UpdateDocumentVersion on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocumentVersion on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method UpdateDocumentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocumentVersion.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    $workdocs->UpdateDocumentVersion(
      DocumentId          => 'MyResourceIdType',
      VersionId           => 'MyDocumentVersionIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      VersionStatus       => 'ACTIVE',                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/UpdateDocumentVersion>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 B<REQUIRED> VersionId => Str

The version ID of the document.



=head2 VersionStatus => Str

The status of the version.

Valid values are: C<"ACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocumentVersion in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

