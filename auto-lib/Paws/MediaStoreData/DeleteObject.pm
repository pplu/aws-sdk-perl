
package Paws::MediaStoreData::DeleteObject;
  use Moose;
  has Path => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Path', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteObject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Path+}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaStoreData::DeleteObjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::DeleteObject - Arguments for method DeleteObject on L<Paws::MediaStoreData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteObject on the
L<AWS Elemental MediaStore Data Plane|Paws::MediaStoreData> service. Use the attributes of this class
as arguments to method DeleteObject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteObject.

=head1 SYNOPSIS

    my $data.mediastore = Paws->service('MediaStoreData');
    my $DeleteObjectResponse = $data . mediastore->DeleteObject(
      Path => 'MyPathNaming',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/data.mediastore/DeleteObject>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Path => Str

The path (including the file name) where the object is stored in the
container. Format: E<lt>folder nameE<gt>/E<lt>folder
nameE<gt>/E<lt>file nameE<gt>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteObject in L<Paws::MediaStoreData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

