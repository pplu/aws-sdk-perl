
package Paws::WorkDocs::DescribeFolderContents;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication' );
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId' , required => 1);
  has Include => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'include' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit' );
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker' );
  has Order => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'order' );
  has Sort => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sort' );
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFolderContents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/folders/{FolderId}/contents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DescribeFolderContentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeFolderContents - Arguments for method DescribeFolderContents on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFolderContents on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method DescribeFolderContents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFolderContents.

As an example:

  $service_obj->DescribeFolderContents(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. This field should not be set when
using administrative API actions, as in accessing the API using AWS
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

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

