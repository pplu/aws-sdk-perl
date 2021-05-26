
package Paws::Detective::GetMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graph/members/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::GetMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::GetMembers - Arguments for method GetMembers on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMembers on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method GetMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMembers.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $GetMembersResponse = $api . detective->GetMembers(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      GraphArn => 'MyGraphArn',

    );

    # Results:
    my $MemberDetails       = $GetMembersResponse->MemberDetails;
    my $UnprocessedAccounts = $GetMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::Detective::GetMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/GetMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

The list of AWS account identifiers for the member account for which to
return member details.

You cannot use C<GetMembers> to retrieve information about member
accounts that were removed from the behavior graph.



=head2 B<REQUIRED> GraphArn => Str

The ARN of the behavior graph for which to request the member details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMembers in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

