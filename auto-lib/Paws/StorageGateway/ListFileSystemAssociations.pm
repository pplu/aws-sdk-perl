
package Paws::StorageGateway::ListFileSystemAssociations;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFileSystemAssociations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListFileSystemAssociationsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListFileSystemAssociations - Arguments for method ListFileSystemAssociations on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFileSystemAssociations on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method ListFileSystemAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFileSystemAssociations.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $ListFileSystemAssociationsOutput =
      $storagegateway->ListFileSystemAssociations(
      GatewayARN => 'MyGatewayARN',    # OPTIONAL
      Limit      => 1,                 # OPTIONAL
      Marker     => 'MyMarker',        # OPTIONAL
      );

    # Results:
    my $FileSystemAssociationSummaryList =
      $ListFileSystemAssociationsOutput->FileSystemAssociationSummaryList;
    my $Marker     = $ListFileSystemAssociationsOutput->Marker;
    my $NextMarker = $ListFileSystemAssociationsOutput->NextMarker;

   # Returns a L<Paws::StorageGateway::ListFileSystemAssociationsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/ListFileSystemAssociations>

=head1 ATTRIBUTES


=head2 GatewayARN => Str





=head2 Limit => Int

The maximum number of file system associations to return in the
response. If present, C<Limit> must be an integer with a value greater
than zero. Optional.



=head2 Marker => Str

Opaque pagination token returned from a previous
C<ListFileSystemAssociations> operation. If present, C<Marker>
specifies where to continue the list from after a previous call to
C<ListFileSystemAssociations>. Optional.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFileSystemAssociations in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

