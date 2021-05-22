
package Paws::SSMContacts::CreateContactChannel;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has DeferActivation => (is => 'ro', isa => 'Bool');
  has DeliveryAddress => (is => 'ro', isa => 'Paws::SSMContacts::ContactChannelAddress', required => 1);
  has IdempotencyToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateContactChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::CreateContactChannelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::CreateContactChannel - Arguments for method CreateContactChannel on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateContactChannel on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method CreateContactChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateContactChannel.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $CreateContactChannelResult = $ssm -contacts->CreateContactChannel(
      ContactId       => 'MySsmContactsArn',
      DeliveryAddress => {
        SimpleAddress => 'MySimpleAddress',    # min: 1, max: 320; OPTIONAL
      },
      Name             => 'MyChannelName',
      Type             => 'SMS',
      DeferActivation  => 1,                       # OPTIONAL
      IdempotencyToken => 'MyIdempotencyToken',    # OPTIONAL
    );

    # Results:
    my $ContactChannelArn = $CreateContactChannelResult->ContactChannelArn;

    # Returns a L<Paws::SSMContacts::CreateContactChannelResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/CreateContactChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The Amazon Resource Name (ARN) of the contact channel.



=head2 DeferActivation => Bool

If you want to activate the channel at a later time, you can choose to
defer activation. Incident Manager can't engage your contact channel
until it has been activated.



=head2 B<REQUIRED> DeliveryAddress => L<Paws::SSMContacts::ContactChannelAddress>

The details that Incident Manager uses when trying to engage the
contact channel. The format is dependent on the type of the contact
channel. The following are the expected formats:

=over

=item *

SMS - '+' followed by the country code and phone number

=item *

VOICE - '+' followed by the country code and phone number

=item *

EMAIL - any standard email format

=back




=head2 IdempotencyToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 B<REQUIRED> Name => Str

The name of the contact channel.



=head2 B<REQUIRED> Type => Str

Incident Manager supports three types of contact channels:

=over

=item *

C<SMS>

=item *

C<VOICE>

=item *

C<EMAIL>

=back


Valid values are: C<"SMS">, C<"VOICE">, C<"EMAIL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateContactChannel in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

