
package Paws::SecurityHub::GetMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/members/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::GetMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetMembers - Arguments for method GetMembers on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMembers on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method GetMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMembers.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $GetMembersResponse = $securityhub->GetMembers(
      AccountIds => [ 'MyNonEmptyString', ... ],

    );

    # Results:
    my $Members             = $GetMembersResponse->Members;
    my $UnprocessedAccounts = $GetMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::SecurityHub::GetMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/GetMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of account IDs for the Security Hub member accounts on which you
want to return the details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMembers in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

