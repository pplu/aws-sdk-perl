
package Paws::CloudDirectory::DetachFromIndex;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has IndexReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has TargetReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachFromIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/index/detach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::DetachFromIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DetachFromIndex - Arguments for method DetachFromIndex on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachFromIndex on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method DetachFromIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachFromIndex.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $DetachFromIndexResponse = $clouddirectory->DetachFromIndex(
      DirectoryArn   => 'MyArn',
      IndexReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      TargetReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },

    );

    # Results:
    my $DetachedObjectIdentifier =
      $DetachFromIndexResponse->DetachedObjectIdentifier;

    # Returns a L<Paws::CloudDirectory::DetachFromIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/DetachFromIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) of the directory the index and object
exist in.



=head2 B<REQUIRED> IndexReference => L<Paws::CloudDirectory::ObjectReference>

A reference to the index object.



=head2 B<REQUIRED> TargetReference => L<Paws::CloudDirectory::ObjectReference>

A reference to the object being detached from the index.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachFromIndex in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

