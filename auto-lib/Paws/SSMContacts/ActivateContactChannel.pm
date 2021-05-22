
package Paws::SSMContacts::ActivateContactChannel;
  use Moose;
  has ActivationCode => (is => 'ro', isa => 'Str', required => 1);
  has ContactChannelId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ActivateContactChannel');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ActivateContactChannelResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ActivateContactChannel - Arguments for method ActivateContactChannel on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ActivateContactChannel on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ActivateContactChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ActivateContactChannel.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ActivateContactChannelResult = $ssm -contacts->ActivateContactChannel(
      ActivationCode   => 'MyActivationCode',
      ContactChannelId => 'MySsmContactsArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ActivateContactChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActivationCode => Str

The code sent to the contact channel when it was created in the
contact.



=head2 B<REQUIRED> ContactChannelId => Str

The Amazon Resource Name (ARN) of the contact channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ActivateContactChannel in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

