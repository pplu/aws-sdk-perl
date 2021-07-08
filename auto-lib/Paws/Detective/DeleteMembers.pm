
package Paws::Detective::DeleteMembers;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has GraphArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/graph/members/removal');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Detective::DeleteMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::DeleteMembers - Arguments for method DeleteMembers on L<Paws::Detective>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteMembers on the
L<Amazon Detective|Paws::Detective> service. Use the attributes of this class
as arguments to method DeleteMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteMembers.

=head1 SYNOPSIS

    my $api.detective = Paws->service('Detective');
    my $DeleteMembersResponse = $api . detective->DeleteMembers(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      GraphArn => 'MyGraphArn',

    );

    # Results:
    my $AccountIds          = $DeleteMembersResponse->AccountIds;
    my $UnprocessedAccounts = $DeleteMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::Detective::DeleteMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.detective/DeleteMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

The list of AWS account identifiers for the member accounts to delete
from the behavior graph. You can delete up to 50 member accounts at a
time.



=head2 B<REQUIRED> GraphArn => Str

The ARN of the behavior graph to delete members from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteMembers in L<Paws::Detective>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

