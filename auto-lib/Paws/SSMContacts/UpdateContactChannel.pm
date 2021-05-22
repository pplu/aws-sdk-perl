
package Paws::SSMContacts::UpdateContactChannel;
  use Moose;
  has ContactChannelId => (is => 'ro', isa => 'Str', required => 1);
  has DeliveryAddress => (is => 'ro', isa => 'Paws::SSMContacts::ContactChannelAddress');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContactChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::UpdateContactChannelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::UpdateContactChannel - Arguments for method UpdateContactChannel on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContactChannel on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method UpdateContactChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContactChannel.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $UpdateContactChannelResult = $ssm -contacts->UpdateContactChannel(
      ContactChannelId => 'MySsmContactsArn',
      DeliveryAddress  => {
        SimpleAddress => 'MySimpleAddress',    # min: 1, max: 320; OPTIONAL
      },    # OPTIONAL
      Name => 'MyChannelName',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/UpdateContactChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactChannelId => Str

The Amazon Resource Name (ARN) of the contact channel you want to
update.



=head2 DeliveryAddress => L<Paws::SSMContacts::ContactChannelAddress>

The details that Incident Manager uses when trying to engage the
contact channel.



=head2 Name => Str

The name of the contact channel




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContactChannel in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

