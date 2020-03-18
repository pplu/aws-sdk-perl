
package Paws::MediaStoreData::DescribeObject;
  use Moose;
  has Path => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Path', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Path+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'HEAD');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStoreData::DescribeObjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::DescribeObject - Arguments for method DescribeObject on L<Paws::MediaStoreData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeObject on the
L<AWS Elemental MediaStore Data Plane|Paws::MediaStoreData> service. Use the attributes of this class
as arguments to method DescribeObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeObject.

=head1 SYNOPSIS

    my $data.mediastore = Paws->service('MediaStoreData');
    my $DescribeObjectResponse = $data . mediastore->DescribeObject(
      Path => 'MyPathNaming',

    );

    # Results:
    my $CacheControl  = $DescribeObjectResponse->CacheControl;
    my $ContentLength = $DescribeObjectResponse->ContentLength;
    my $ContentType   = $DescribeObjectResponse->ContentType;
    my $ETag          = $DescribeObjectResponse->ETag;
    my $LastModified  = $DescribeObjectResponse->LastModified;

    # Returns a L<Paws::MediaStoreData::DescribeObjectResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.mediastore/DescribeObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Path => Str

The path (including the file name) where the object is stored in the
container. Format: E<lt>folder nameE<gt>/E<lt>folder
nameE<gt>/E<lt>file nameE<gt>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeObject in L<Paws::MediaStoreData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

