
package Paws::GuardDuty::CreateMembers;
  use Moose;
  has AccountDetails => (is => 'ro', isa => 'ArrayRef[Paws::GuardDuty::AccountDetail]', traits => ['NameInRequest'], request_name => 'accountDetails', required => 1);
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/member');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::CreateMembersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateMembers - Arguments for method CreateMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMembers on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMembers.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateMembersResponse = $guardduty->CreateMembers(
      AccountDetails => [
        {
          AccountId => 'MyAccountId',
          Email     => 'MyEmail',

        },
        ...
      ],
      DetectorId => 'My__string',

    );

    # Results:
    my $UnprocessedAccounts = $CreateMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::CreateMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountDetails => ArrayRef[L<Paws::GuardDuty::AccountDetail>]

A list of account ID and email address pairs of the accounts that you
want to associate with the master GuardDuty account.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account with which you
want to associate member accounts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

