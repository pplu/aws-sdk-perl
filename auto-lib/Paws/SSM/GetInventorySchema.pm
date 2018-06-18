
package Paws::SSM::GetInventorySchema;
  use Moose;
  has Aggregator => (is => 'ro', isa => 'Bool');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has SubType => (is => 'ro', isa => 'Bool');
  has TypeName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInventorySchema');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetInventorySchemaResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetInventorySchema - Arguments for method GetInventorySchema on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInventorySchema on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetInventorySchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInventorySchema.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetInventorySchemaResult = $ssm->GetInventorySchema(
      Aggregator => 1,                                  # OPTIONAL
      MaxResults => 1,                                  # OPTIONAL
      NextToken  => 'MyNextToken',                      # OPTIONAL
      SubType    => 1,                                  # OPTIONAL
      TypeName   => 'MyInventoryItemTypeNameFilter',    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetInventorySchemaResult->NextToken;
    my $Schemas   = $GetInventorySchemaResult->Schemas;

    # Returns a L<Paws::SSM::GetInventorySchemaResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetInventorySchema>

=head1 ATTRIBUTES


=head2 Aggregator => Bool

Returns inventory schemas that support aggregation. For example, this
call returns the C<AWS:InstanceInformation> type, because it supports
aggregation based on the C<PlatformName>, C<PlatformType>, and
C<PlatformVersion> attributes.



=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 SubType => Bool

Returns the sub-type schema for a specified inventory type.



=head2 TypeName => Str

The type of inventory item to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInventorySchema in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

