
package Paws::Macie2::CreateMember;
  use Moose;
  has Account => (is => 'ro', isa => 'Paws::Macie2::AccountDetail', traits => ['NameInRequest'], request_name => 'account', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Macie2::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateMember');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/members');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::CreateMemberResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::CreateMember - Arguments for method CreateMember on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateMember on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method CreateMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateMember.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $CreateMemberResponse = $macie2->CreateMember(
      Account => {
        AccountId => 'My__string',
        Email     => 'My__string',

      },
      Tags => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateMemberResponse->Arn;

    # Returns a L<Paws::Macie2::CreateMemberResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/CreateMember>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Account => L<Paws::Macie2::AccountDetail>

The details of the account to associate with the administrator account.



=head2 Tags => L<Paws::Macie2::TagMap>

A map of key-value pairs that specifies the tags to associate with the
account in Amazon Macie.

An account can have a maximum of 50 tags. Each tag consists of a tag
key and an associated tag value. The maximum length of a tag key is 128
characters. The maximum length of a tag value is 256 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateMember in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

