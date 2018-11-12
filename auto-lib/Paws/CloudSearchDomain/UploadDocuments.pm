
package Paws::CloudSearchDomain::UploadDocuments;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Content-Type', required => 1);
  has Documents => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'documents', required => 1);

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Documents');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UploadDocuments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-01-01/documents/batch?format=sdk');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearchDomain::UploadDocumentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::UploadDocuments - Arguments for method UploadDocuments on L<Paws::CloudSearchDomain>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UploadDocuments on the
L<Amazon CloudSearch Domain|Paws::CloudSearchDomain> service. Use the attributes of this class
as arguments to method UploadDocuments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UploadDocuments.

=head1 SYNOPSIS

    my $cloudsearchdomain = Paws->service('CloudSearchDomain');
    my $UploadDocumentsResponse = $cloudsearchdomain->UploadDocuments(
      ContentType => 'application/json',
      Documents   => 'BlobBlob',

    );

    # Results:
    my $Adds     = $UploadDocumentsResponse->Adds;
    my $Deletes  = $UploadDocumentsResponse->Deletes;
    my $Status   = $UploadDocumentsResponse->Status;
    my $Warnings = $UploadDocumentsResponse->Warnings;

    # Returns a L<Paws::CloudSearchDomain::UploadDocumentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudsearchdomain/UploadDocuments>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContentType => Str

The format of the batch you are uploading. Amazon CloudSearch supports
two document batch formats:

=over

=item * application/json

=item * application/xml

=back


Valid values are: C<"application/json">, C<"application/xml">

=head2 B<REQUIRED> Documents => Str

A batch of documents formatted in JSON or HTML.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UploadDocuments in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

