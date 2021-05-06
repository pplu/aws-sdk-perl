
package Paws::Macie::AssociateMemberAccount;
  use Moose;
  has MemberAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'memberAccountId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateMemberAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie::AssociateMemberAccount - Arguments for method AssociateMemberAccount on L<Paws::Macie>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateMemberAccount on the
L<Amazon Macie|Paws::Macie> service. Use the attributes of this class
as arguments to method AssociateMemberAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateMemberAccount.

=head1 SYNOPSIS

    my $macie = Paws->service('Macie');
    $macie->AssociateMemberAccount(
      MemberAccountId => 'MyAWSAccountId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie/AssociateMemberAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MemberAccountId => Str

The ID of the AWS account that you want to associate with Amazon Macie
as a member account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateMemberAccount in L<Paws::Macie>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

