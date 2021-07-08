
package Paws::StorageGateway::ListTapePools;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');
  has PoolARNs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTapePools');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListTapePoolsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListTapePools - Arguments for method ListTapePools on L<Paws::StorageGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTapePools on the
L<AWS Storage Gateway|Paws::StorageGateway> service. Use the attributes of this class
as arguments to method ListTapePools.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTapePools.

=head1 SYNOPSIS

    my $storagegateway = Paws->service('StorageGateway');
    my $ListTapePoolsOutput = $storagegateway->ListTapePools(
      Limit    => 1,             # OPTIONAL
      Marker   => 'MyMarker',    # OPTIONAL
      PoolARNs => [
        'MyPoolARN', ...         # min: 50, max: 500
      ],    # OPTIONAL
    );

    # Results:
    my $Marker    = $ListTapePoolsOutput->Marker;
    my $PoolInfos = $ListTapePoolsOutput->PoolInfos;

    # Returns a L<Paws::StorageGateway::ListTapePoolsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/storagegateway/ListTapePools>

=head1 ATTRIBUTES


=head2 Limit => Int

An optional number limit for the tape pools in the list returned by
this call.



=head2 Marker => Str

A string that indicates the position at which to begin the returned
list of tape pools.



=head2 PoolARNs => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) of each of the custom tape pools you
want to list. If you don't specify a custom tape pool ARN, the response
lists all custom tape pools.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTapePools in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

