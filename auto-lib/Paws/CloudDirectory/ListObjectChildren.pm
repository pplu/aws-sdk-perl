
package Paws::CloudDirectory::ListObjectChildren;
  use Moose;
  has ConsistencyLevel => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-consistency-level');
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectChildren');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/object/children');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListObjectChildrenResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectChildren - Arguments for method ListObjectChildren on L<Paws::CloudDirectory>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListObjectChildren on the
L<Amazon CloudDirectory|Paws::CloudDirectory> service. Use the attributes of this class
as arguments to method ListObjectChildren.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListObjectChildren.

=head1 SYNOPSIS

    my $clouddirectory = Paws->service('CloudDirectory');
    my $ListObjectChildrenResponse = $clouddirectory->ListObjectChildren(
      DirectoryArn    => 'MyArn',
      ObjectReference => {
        Selector => 'MySelectorObjectReference',    # OPTIONAL
      },
      ConsistencyLevel => 'SERIALIZABLE',           # OPTIONAL
      MaxResults       => 1,                        # OPTIONAL
      NextToken        => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $Children  = $ListObjectChildrenResponse->Children;
    my $NextToken = $ListObjectChildrenResponse->NextToken;

    # Returns a L<Paws::CloudDirectory::ListObjectChildrenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/clouddirectory/ListObjectChildren>

=head1 ATTRIBUTES


=head2 ConsistencyLevel => Str

Represents the manner and timing in which the successful write or
update of an object is reflected in a subsequent read operation of that
same object.

Valid values are: C<"SERIALIZABLE">, C<"EVENTUAL">

=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where the object resides. For more information, see arns.



=head2 MaxResults => Int

The maximum number of items to be retrieved in a single call. This is
an approximate number.



=head2 NextToken => Str

The pagination token.



=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

The reference that identifies the object for which child objects are
being listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListObjectChildren in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

