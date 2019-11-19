
package Paws::GuardDuty::DisassociateMembers;
  use Moo;
  use Types::Standard qw/Str Undef ArrayRef/;
  use Paws::GuardDuty::Types qw//;
  has AccountIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DisassociateMembers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/member/disassociate');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::DisassociateMembersResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DetectorId' => 'detectorId'
                  },
  'IsRequired' => {
                    'AccountIds' => 1,
                    'DetectorId' => 1
                  },
  'NameInRequest' => {
                       'AccountIds' => 'accountIds'
                     },
  'types' => {
               'AccountIds' => {
                                 'type' => 'ArrayRef[Str|Undef]'
                               },
               'DetectorId' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DisassociateMembers - Arguments for method DisassociateMembers on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateMembers on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DisassociateMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateMembers.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DisassociateMembersResponse = $guardduty->DisassociateMembers(
      AccountIds => [
        'MyAccountId', ...    # min: 12, max: 12
      ],
      DetectorId => 'MyDetectorId',

    );

    # Results:
    my $UnprocessedAccounts = $DisassociateMembersResponse->UnprocessedAccounts;

    # Returns a L<Paws::GuardDuty::DisassociateMembersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DisassociateMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountIds => ArrayRef[Str|Undef]

A list of account IDs of the GuardDuty member accounts that you want to
disassociate from master.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account whose members
you want to disassociate from master.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateMembers in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

