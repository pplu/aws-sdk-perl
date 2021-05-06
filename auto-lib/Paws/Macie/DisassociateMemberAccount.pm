
package Paws::Macie::DisassociateMemberAccount;
  use Moose;
  has MemberAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memberAccountId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateMemberAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::DisassociateMemberAccount - Arguments for method DisassociateMemberAccount on L<Paws::Macie>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateMemberAccount on the
L<Amazon Macie|Paws::Macie> service. Use the attributes of this class
as arguments to method DisassociateMemberAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateMemberAccount.

=head1 SYNOPSIS

    my $macie = Paws->service('Macie');
    $macie->DisassociateMemberAccount(
      MemberAccountId => 'MyAWSAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie/DisassociateMemberAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberAccountId => Str

The ID of the member account that you want to remove from Amazon Macie.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateMemberAccount in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

