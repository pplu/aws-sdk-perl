
package Paws::S3::DeleteObjectTagging;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Key => (is => 'ro', isa => 'Str', uri_name => 'Key', traits => ['ParamInURI'], required => 1);
  has VersionId => (is => 'ro', isa => 'Str', query_name => 'versionId', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObjectTagging');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}/{Key+}?tagging');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::DeleteObjectTaggingOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectTagging - Arguments for method DeleteObjectTagging on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObjectTagging on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method DeleteObjectTagging.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObjectTagging.

As an example:

  $service_obj->DeleteObjectTagging(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bucket => Str





=head2 B<REQUIRED> Key => Str





=head2 VersionId => Str

The versionId of the object that the tag-set will be removed from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObjectTagging in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

