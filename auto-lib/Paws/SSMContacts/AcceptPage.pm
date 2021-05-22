
package Paws::SSMContacts::AcceptPage;
  use Moose;
  has AcceptCode => (is => 'ro', isa => 'Str', required => 1);
  has AcceptType => (is => 'ro', isa => 'Str', required => 1);
  has ContactChannelId => (is => 'ro', isa => 'Str');
  has Note => (is => 'ro', isa => 'Str');
  has PageId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptPage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::AcceptPageResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::AcceptPage - Arguments for method AcceptPage on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptPage on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method AcceptPage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptPage.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $AcceptPageResult = $ssm -contacts->AcceptPage(
      AcceptCode       => 'MyAcceptCode',
      AcceptType       => 'DELIVERED',
      PageId           => 'MySsmContactsArn',
      ContactChannelId => 'MySsmContactsArn',    # OPTIONAL
      Note             => 'MyReceiptInfo',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/AcceptPage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceptCode => Str

The accept code is a 6-digit code used to acknowledge the page.



=head2 B<REQUIRED> AcceptType => Str

The type indicates if the page was C<DELIVERED> or C<READ>.

Valid values are: C<"DELIVERED">, C<"READ">

=head2 ContactChannelId => Str

The ARN of the contact channel.



=head2 Note => Str

Information provided by the user when the user acknowledges the page.



=head2 B<REQUIRED> PageId => Str

The Amazon Resource Name (ARN) of the engagement to a contact channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptPage in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

