
package Paws::CloudDirectory::DeleteDirectory;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDirectory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/directory');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::DeleteDirectoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DeleteDirectory - Arguments for method DeleteDirectory on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDirectory on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method DeleteDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDirectory.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $DeleteDirectoryResponse = $clouddirectory->DeleteDirectory(
      DirectoryArn => 'MyArn',

    );

    # Results:
    my $DirectoryArn = $DeleteDirectoryResponse->DirectoryArn;

    # Returns a L<Paws::CloudDirectory::DeleteDirectoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/DeleteDirectory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDirectory in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

