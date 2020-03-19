
package Paws::RAM::GetResourceShares;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner', required => 1);
  has ResourceShareArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceShareArns');
  has ResourceShareStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareStatus');
  has TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::RAM::TagFilter]', traits => ['NameInRequest'], request_name => 'tagFilters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceShares');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getresourceshares');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::GetResourceSharesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShares - Arguments for method GetResourceShares on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceShares on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method GetResourceShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceShares.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $GetResourceSharesResponse = $ram->GetResourceShares(
      ResourceOwner       => 'SELF',
      MaxResults          => 1,                      # OPTIONAL
      Name                => 'MyString',             # OPTIONAL
      NextToken           => 'MyString',             # OPTIONAL
      ResourceShareArns   => [ 'MyString', ... ],    # OPTIONAL
      ResourceShareStatus => 'PENDING',              # OPTIONAL
      TagFilters          => [
        {
          TagKey => 'MyTagKey',                      # OPTIONAL
          TagValues => [ 'MyTagValue', ... ],        # OPTIONAL
        },
        ...
      ],                                             # OPTIONAL
    );

    # Results:
    my $NextToken      = $GetResourceSharesResponse->NextToken;
    my $ResourceShares = $GetResourceSharesResponse->ResourceShares;

    # Returns a L<Paws::RAM::GetResourceSharesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/GetResourceShares>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 Name => Str

The name of the resource share.



=head2 NextToken => Str

The token for the next page of results.



=head2 B<REQUIRED> ResourceOwner => Str

The type of owner.

Valid values are: C<"SELF">, C<"OTHER-ACCOUNTS">

=head2 ResourceShareArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resource shares.



=head2 ResourceShareStatus => Str

The status of the resource share.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"FAILED">, C<"DELETING">, C<"DELETED">

=head2 TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]

One or more tag filters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceShares in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

