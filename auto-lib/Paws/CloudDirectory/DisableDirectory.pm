
package Paws::CloudDirectory::DisableDirectory;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisableDirectory');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/directory/disable');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::DisableDirectoryResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DisableDirectory - Arguments for method DisableDirectory on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisableDirectory on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method DisableDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisableDirectory.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $DisableDirectoryResponse = $clouddirectory->DisableDirectory(
      DirectoryArn => 'MyArn',

    );

    # Results:
    my $DirectoryArn = $DisableDirectoryResponse->DirectoryArn;

    # Returns a L<Paws::CloudDirectory::DisableDirectoryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/DisableDirectory>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory to disable.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisableDirectory in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

