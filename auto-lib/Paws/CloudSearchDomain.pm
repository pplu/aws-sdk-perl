
use Paws::API;


package Paws::CloudSearchDomain {
  warn "Paws::CloudSearchDomain is not stable / supported / entirely developed";
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'cloudsearchdomain');
  has version => (is => 'ro', isa => 'Str', default => '2013-01-01');
  has flattened_arrays => (is => 'ro', isa => 'Str', default => '0');

  with 'Paws::API::RegionalEndpointCaller', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  
  sub Search {
    my $self = shift;
    return $self->do_call('Paws::CloudSearchDomain::Search', @_);
  }
  sub Suggest {
    my $self = shift;
    return $self->do_call('Paws::CloudSearchDomain::Suggest', @_);
  }
  sub UploadDocuments {
    my $self = shift;
    return $self->do_call('Paws::CloudSearchDomain::UploadDocuments', @_);
  }
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain - Perl Interface to AWS Amazon CloudSearch Domain

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('...')->new;
  my $res = $obj->Method(Arg1 => $val1, Arg2 => $val2);

=head1 DESCRIPTION



You use the AmazonCloudSearch2013 API to upload documents to a search
domain and search those documents.

The endpoints for submitting C<UploadDocuments>, C<Search>, and
C<Suggest> requests are domain-specific. To get the endpoints for your
domain, use the Amazon CloudSearch configuration service
C<DescribeDomains> action. The domain endpoints are also displayed on
the domain dashboard in the Amazon CloudSearch console. You submit
suggest requests to the search endpoint.

For more information, see the Amazon CloudSearch Developer Guide.










=head1 METHODS

=head2 Search()

  Arguments described in: L<Paws::CloudSearchDomain::Search>

  Returns: L<Paws::CloudSearchDomain::SearchResponse>

  

Retrieves a list of documents that match the specified search criteria.
How you specify the search criteria depends on which query parser you
use. Amazon CloudSearch supports four query parsers:

=over

=item * C<simple>: search all C<text> and C<text-array> fields for the
specified string. Search for phrases, individual terms, and prefixes.

=item * C<structured>: search specific fields, construct compound
queries using Boolean operators, and use advanced features such as term
boosting and proximity searching.

=item * C<lucene>: specify search criteria using the Apache Lucene
query parser syntax.

=item * C<dismax>: specify search criteria using the simplified subset
of the Apache Lucene query parser syntax defined by the DisMax query
parser.

=back

For more information, see Searching Your Data in the I<Amazon
CloudSearch Developer Guide>.

The endpoint for submitting C<Search> requests is domain-specific. You
submit search requests to a domain's search endpoint. To get the search
endpoint for your domain, use the Amazon CloudSearch configuration
service C<DescribeDomains> action. A domain's endpoints are also
displayed on the domain dashboard in the Amazon CloudSearch console.











=head2 Suggest()

  Arguments described in: L<Paws::CloudSearchDomain::Suggest>

  Returns: L<Paws::CloudSearchDomain::SuggestResponse>

  

Retrieves autocomplete suggestions for a partial query string. You can
use suggestions enable you to display likely matches before users
finish typing. In Amazon CloudSearch, suggestions are based on the
contents of a particular text field. When you request suggestions,
Amazon CloudSearch finds all of the documents whose values in the
suggester field start with the specified query string. The beginning of
the field must match the query string to be considered a match.

For more information about configuring suggesters and retrieving
suggestions, see Getting Suggestions in the I<Amazon CloudSearch
Developer Guide>.

The endpoint for submitting C<Suggest> requests is domain-specific. You
submit suggest requests to a domain's search endpoint. To get the
search endpoint for your domain, use the Amazon CloudSearch
configuration service C<DescribeDomains> action. A domain's endpoints
are also displayed on the domain dashboard in the Amazon CloudSearch
console.











=head2 UploadDocuments()

  Arguments described in: L<Paws::CloudSearchDomain::UploadDocuments>

  Returns: L<Paws::CloudSearchDomain::UploadDocumentsResponse>

  

Posts a batch of documents to a search domain for indexing. A document
batch is a collection of add and delete operations that represent the
documents you want to add, update, or delete from your domain. Batches
can be described in either JSON or XML. Each item that you want Amazon
CloudSearch to return as a search result (such as a product) is
represented as a document. Every document has a unique ID and one or
more fields that contain the data that you want to search and return in
results. Individual documents cannot contain more than 1 MB of data.
The entire batch cannot exceed 5 MB. To get the best possible upload
performance, group add and delete operations in batches that are close
the 5 MB limit. Submitting a large volume of single-document batches
can overload a domain's document service.

The endpoint for submitting C<UploadDocuments> requests is
domain-specific. To get the document endpoint for your domain, use the
Amazon CloudSearch configuration service C<DescribeDomains> action. A
domain's endpoints are also displayed on the domain dashboard in the
Amazon CloudSearch console.

For more information about formatting your data for Amazon CloudSearch,
see Preparing Your Data in the I<Amazon CloudSearch Developer Guide>.
For more information about uploading data for indexing, see Uploading
Data in the I<Amazon CloudSearch Developer Guide>.











=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

