
package Paws::RAM::ListPrincipals;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner', required => 1);
  has ResourceShareArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceShareArns');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPrincipals');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listprincipals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListPrincipalsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPrincipals - Arguments for method ListPrincipals on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPrincipals on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListPrincipals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPrincipals.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListPrincipalsResponse = $ram->ListPrincipals(
      ResourceOwner     => 'SELF',
      MaxResults        => 1,                      # OPTIONAL
      NextToken         => 'MyString',             # OPTIONAL
      Principals        => [ 'MyString', ... ],    # OPTIONAL
      ResourceArn       => 'MyString',             # OPTIONAL
      ResourceShareArns => [ 'MyString', ... ],    # OPTIONAL
      ResourceType      => 'MyString',             # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListPrincipalsResponse->NextToken;
    my $Principals = $ListPrincipalsResponse->Principals;

    # Returns a L<Paws::RAM::ListPrincipalsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListPrincipals>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return with a single call. To retrieve
the remaining results, make another call with the returned C<nextToken>
value.



=head2 NextToken => Str

The token for the next page of results.



=head2 Principals => ArrayRef[Str|Undef]

The principals.



=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the resource.



=head2 B<REQUIRED> ResourceOwner => Str

The type of owner.

Valid values are: C<"SELF">, C<"OTHER-ACCOUNTS">

=head2 ResourceShareArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the resource shares.



=head2 ResourceType => Str

The resource type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPrincipals in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

