
package Paws::CloudDirectory::BatchRead;
  use Moose;
  has ConsistencyLevel => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-consistency-level');
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has Operations => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::BatchReadOperation]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchRead');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/batchread');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::BatchReadResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchRead - Arguments for method BatchRead on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchRead on the 
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method BatchRead.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchRead.

As an example:

  $service_obj->BatchRead(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory.
For more information, see arns.



=head2 B<REQUIRED> Operations => ArrayRef[L<Paws::CloudDirectory::BatchReadOperation>]

A list of operations that are part of the batch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchRead in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

