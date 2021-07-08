
package Paws::Transfer::ListAccesses;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAccesses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::ListAccessesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListAccesses - Arguments for method ListAccesses on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAccesses on the
L<AWS Transfer Family|Paws::Transfer> service. Use the attributes of this class
as arguments to method ListAccesses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAccesses.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $ListAccessesResponse = $transfer->ListAccesses(
      ServerId   => 'MyServerId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Accesses  = $ListAccessesResponse->Accesses;
    my $NextToken = $ListAccessesResponse->NextToken;
    my $ServerId  = $ListAccessesResponse->ServerId;

    # Returns a L<Paws::Transfer::ListAccessesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/ListAccesses>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the maximum number of access SIDs to return.



=head2 NextToken => Str

When you can get additional results from the C<ListAccesses> call, a
C<NextToken> parameter is returned in the output. You can then pass in
a subsequent command to the C<NextToken> parameter to continue listing
additional accesses.



=head2 B<REQUIRED> ServerId => Str

A system-assigned unique identifier for a server that has users
assigned to it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAccesses in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

