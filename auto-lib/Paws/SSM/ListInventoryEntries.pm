
package Paws::SSM::ListInventoryEntries;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryFilter]');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInventoryEntries');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::ListInventoryEntriesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListInventoryEntries - Arguments for method ListInventoryEntries on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInventoryEntries on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method ListInventoryEntries.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInventoryEntries.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $ListInventoryEntriesResult = $ssm->ListInventoryEntries(
      InstanceId => 'MyInstanceId',
      TypeName   => 'MyInventoryItemTypeName',
      Filters    => [
        {
          Key    => 'MyInventoryFilterKey',               # min: 1, max: 200
          Values => [ 'MyInventoryFilterValue', ... ],    # min: 1, max: 40
          Type   => 'Equal'
          , # values: Equal, NotEqual, BeginWith, LessThan, GreaterThan, Exists; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $CaptureTime   = $ListInventoryEntriesResult->CaptureTime;
    my $Entries       = $ListInventoryEntriesResult->Entries;
    my $InstanceId    = $ListInventoryEntriesResult->InstanceId;
    my $NextToken     = $ListInventoryEntriesResult->NextToken;
    my $SchemaVersion = $ListInventoryEntriesResult->SchemaVersion;
    my $TypeName      = $ListInventoryEntriesResult->TypeName;

    # Returns a L<Paws::SSM::ListInventoryEntriesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/ListInventoryEntries>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::InventoryFilter>]

One or more filters. Use a filter to return a more specific list of
results.



=head2 B<REQUIRED> InstanceId => Str

The instance ID for which you want inventory information.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 B<REQUIRED> TypeName => Str

The type of inventory item for which you want information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInventoryEntries in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

