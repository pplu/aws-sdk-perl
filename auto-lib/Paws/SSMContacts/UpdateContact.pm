
package Paws::SSMContacts::UpdateContact;
  use Moose;
  has ContactId => (is => 'ro', isa => 'Str', required => 1);
  has DisplayName => (is => 'ro', isa => 'Str');
  has Plan => (is => 'ro', isa => 'Paws::SSMContacts::Plan');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::UpdateContactResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::UpdateContact - Arguments for method UpdateContact on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateContact on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method UpdateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateContact.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $UpdateContactResult = $ssm -contacts->UpdateContact(
      ContactId   => 'MySsmContactsArn',
      DisplayName => 'MyContactName',      # OPTIONAL
      Plan        => {
        Stages => [
          {
            DurationInMinutes => 1,        # max: 30
            Targets           => [
              {
                ChannelTargetInfo => {
                  ContactChannelId => 'MySsmContactsArn',    # min: 1, max: 2048
                  RetryIntervalInMinutes => 1,               # max: 60; OPTIONAL
                },    # OPTIONAL
                ContactTargetInfo => {
                  IsEssential => 1,
                  ContactId   => 'MySsmContactsArn',    # min: 1, max: 2048
                },    # OPTIONAL
              },
              ...
            ],

          },
          ...
        ],

      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/UpdateContact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContactId => Str

The Amazon Resource Name (ARN) of the contact or escalation plan you're
updating.



=head2 DisplayName => Str

The full name of the contact or escalation plan.



=head2 Plan => L<Paws::SSMContacts::Plan>

A list of stages. A contact has an engagement plan with stages for
specified contact channels. An escalation plan uses these stages to
contact specified contacts.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateContact in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

