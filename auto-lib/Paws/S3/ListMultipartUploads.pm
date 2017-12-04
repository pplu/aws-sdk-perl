
package Paws::S3::ListMultipartUploads;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Delimiter => (is => 'ro', isa => 'Str', query_name => 'delimiter', traits => ['ParamInQuery']);
  has EncodingType => (is => 'ro', isa => 'Str', query_name => 'encoding-type', traits => ['ParamInQuery']);
  has KeyMarker => (is => 'ro', isa => 'Str', query_name => 'key-marker', traits => ['ParamInQuery']);
  has MaxUploads => (is => 'ro', isa => 'Int', query_name => 'max-uploads', traits => ['ParamInQuery']);
  has Prefix => (is => 'ro', isa => 'Str', query_name => 'prefix', traits => ['ParamInQuery']);
  has UploadIdMarker => (is => 'ro', isa => 'Str', query_name => 'upload-id-marker', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMultipartUploads');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?uploads');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListMultipartUploadsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListMultipartUploads - Arguments for method ListMultipartUploads on L<Paws::S3>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMultipartUploads on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method ListMultipartUploads.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMultipartUploads.

As an example:

  $service_obj->ListMultipartUploads(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 Delimiter => Str

Character you use to group keys.



=head2 EncodingType => Str



Valid values are: C<"url">

=head2 KeyMarker => Str

Together with upload-id-marker, this parameter specifies the multipart
upload after which listing should begin.



=head2 MaxUploads => Int

Sets the maximum number of multipart uploads, from 1 to 1,000, to
return in the response body. 1,000 is the maximum number of uploads
that can be returned in a response.



=head2 Prefix => Str

Lists in-progress uploads only for those keys that begin with the
specified prefix.



=head2 UploadIdMarker => Str

Together with key-marker, specifies the multipart upload after which
listing should begin. If key-marker is not specified, the
upload-id-marker parameter is ignored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMultipartUploads in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

