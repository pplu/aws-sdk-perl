
package Paws::SecurityHub::ListMembers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OnlyAssociated => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'OnlyAssociated');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/members');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::ListMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListMembers - Arguments for method ListMembers on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMembers on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method ListMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMembers.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $ListMembersResponse = $securityhub->ListMembers(
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      OnlyAssociated => 1,                # OPTIONAL
    );

    # Results:
    my $Members   = $ListMembersResponse->Members;
    my $NextToken = $ListMembersResponse->NextToken;

    # Returns a L<Paws::SecurityHub::ListMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/ListMembers>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return in the response.



=head2 NextToken => Str

The token that is required for pagination. On your first call to the
C<ListMembers> operation, set the value of this parameter to C<NULL>.

For subsequent calls to the operation, to continue listing data, set
the value of this parameter to the value returned from the previous
response.



=head2 OnlyAssociated => Bool

Specifies which member accounts to include in the response based on
their relationship status with the administrator account. The default
value is C<TRUE>.

If C<OnlyAssociated> is set to C<TRUE>, the response includes member
accounts whose relationship status with the administrator account is
set to C<ENABLED>.

If C<OnlyAssociated> is set to C<FALSE>, the response includes all
existing member accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMembers in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

